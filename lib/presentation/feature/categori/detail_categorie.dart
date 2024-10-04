import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pegadaian_training_job_portal/presentation/feature/home/widgets/custom_list.dart';

// Kelas model untuk menyimpan data pekerjaan
class Job {
  final String imageUrl; // URL gambar
  final String jobTitle; // Judul pekerjaan
  final String companyName; // Nama perusahaan

  // Konstruktor untuk menginisialisasi properti
  Job({
    required this.imageUrl,
    required this.jobTitle,
    required this.companyName,
  });
}

class DetailCategory extends StatelessWidget {
  final String jobTitle;
  final String imageUrl;
  final String companyName; // Menambahkan companyName

  // Konstruktor untuk menerima parameter
  DetailCategory({
    required this.jobTitle,
    required this.imageUrl,
    required this.companyName, // Menerima companyName
  });

  @override
  Widget build(BuildContext context) {
    // Daftar pekerjaan berdasarkan jobTitle
    List<Job> jobs = _getJobsByTitle(jobTitle);

    return Scaffold(
      appBar: AppBar(
        title: Text(jobTitle), // Menampilkan judul pekerjaan di AppBar
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              'Job Post',
              style: GoogleFonts.poppins(
                color: Color(0xff272C2F),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          // Daftar JobList
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 16, left: 24.0),
              itemCount: jobs.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      bottom: 16.0), // Menambahkan jarak antar item
                  child: CustomList(
                    imageUrl: jobs[index].imageUrl,
                    jobTitle: jobs[index].jobTitle,
                    companyName: jobs[index].companyName,
                    onTap: () {
                      _showJobDetails(
                          context,
                          jobs[index]
                              .jobTitle); // Kirim jobTitle sebagai detail
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // Fungsi untuk mendapatkan daftar pekerjaan berdasarkan jobTitle
  List<Job> _getJobsByTitle(String title) {
    // Daftar pekerjaan dummy
    List<Job> allJobs = [
      Job(
          imageUrl: 'assets/images/google-icon.png',
          jobTitle: 'Web Developer',
          companyName: 'Google Co.'),
      Job(
          imageUrl: 'assets/images/google-icon.png',
          jobTitle: 'Mobile Developer Item',
          companyName: 'Astra Co.'),
      Job(
          imageUrl: 'assets/images/card_category.png',
          jobTitle: 'Web Developer',
          companyName: 'Microsoft Co.'),
      Job(
          imageUrl: 'assets/images/google-icon.png',
          jobTitle: 'Web Developer UI Engineer',
          companyName: 'Google Co.'),
      Job(
          imageUrl: 'assets/images/google-icon.png',
          jobTitle: 'Web Developer (QA)',
          companyName: 'Google Co.'),
    ];

    // Pengkondisian berdasarkan jobTitle
    switch (title) {
      case 'Mobile Developer':
        return allJobs
            .where((job) =>
                job.jobTitle.contains('Mobile Developer')) // Disesuaikan
            .toList()
            .take(5)
            .toList();
      case 'Website Developer':
        return allJobs
            .where(
                (job) => job.jobTitle.contains('Web Developer')) // Disesuaikan
            .toList()
            .take(10)
            .toList();
      default:
        return [];
    }
  }

  void _showJobDetails(BuildContext context, String jobTitle) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Job Details'),
          content: Text('Details for job title: $jobTitle'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Tutup dialog
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
