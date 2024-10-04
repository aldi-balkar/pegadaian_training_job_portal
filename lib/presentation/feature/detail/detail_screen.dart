import 'package:flutter/material.dart'; // Impor Flutter Material untuk UI widget
import 'package:google_fonts/google_fonts.dart'; // Impor Google Fonts untuk custom font
import 'package:pegadaian_training_job_portal/theme.dart'; // Impor custom theme untuk styling text dan widget

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isApplied = false;

  @override
  Widget build(BuildContext context) {
    Widget applyButton({bool showBackButton = false}) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                height: 45,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(66),
                    ),
                    backgroundColor:
                        const Color(0xff4141A4), // Warna tombol Apply
                  ),
                  onPressed: () {
                    setState(() {
                      isApplied = !isApplied;
                    });
                  },
                  child: Text(
                    'Apply for Job',
                    style: buttonTextStyle,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              if (showBackButton)
                SizedBox(
                  width: 200,
                  height: 45,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(66),
                      ),
                      backgroundColor: const Color.fromARGB(
                          255, 68, 138, 255), // Warna tombol Back
                    ),
                    onPressed: () {
                      Navigator.pop(context); // Kembali ke halaman sebelumnya
                    },
                    child: Text(
                      'Back',
                      style: buttonTextStyle,
                    ),
                  ),
                ),
            ],
          ),
        ),
      );
    }

    // Fungsi untuk tombol Cancel Apply
    Widget cancelButton() {
      return Padding(
        padding: const EdgeInsets.only(top: 51.0, left: 80),
        child: SizedBox(
          width: 200,
          height: 45,
          child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(66),
              ),
              backgroundColor: const Color(0xffFD4F56),
            ),
            onPressed: () {
              setState(() {
                isApplied = !isApplied;
              });
            },
            child: Text(
              'Cancel Apply',
              style: buttonTextStyle,
            ),
          ),
        ),
      );
    }

    // Pesan sukses ketika sudah apply
    Widget successAppliedMessages() {
      return Container(
        padding: const EdgeInsets.fromLTRB(50, 5, 50, 5),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: const BoxDecoration(
          color: Color(0xffECEDF1),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Text(
          'You have applied this job and the \nrecruiter will contact you',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            color: const Color(0xffA2A6B4),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 80),
              isApplied ? successAppliedMessages() : const SizedBox(),
              Image.asset(
                'assets/images/google-icon.png',
                width: 60,
                height: 60,
              ),
              const SizedBox(height: 20),
              Text('Front-End Developer', style: jobApplyTextStyle),
              Text('Google, Inc • Jakarta', style: companyTextStyle),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('About the job', style: titleRequirements),
                    const SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            const SizedBox(width: 8),
                            Text('Full-Time On Site',
                                style: requirementsTextStyle),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            const SizedBox(width: 8),
                            Text('Start at \$18,000 per month',
                                style: requirementsTextStyle),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Qualifications', style: titleRequirements),
                        const SizedBox(height: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/dot.png',
                                  width: 12,
                                  height: 12,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  "Candidate must possess at least a \nBachelor's Degree.",
                                  style: requirementsTextStyle,
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/dot.png',
                                  width: 12,
                                  height: 12,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  "Able to use Microsoft Office and Google \nbased service.",
                                  style: requirementsTextStyle,
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/dot.png',
                                  width: 12,
                                  height: 12,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  "Have an excellent time management, \ngood at organized and details",
                                  style: requirementsTextStyle,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Responsibilities', style: titleRequirements),
                            const SizedBox(height: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/dot.png',
                                      width: 12,
                                      height: 12,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      "Initiate and promote any programs, events, \ntraining, or activities.",
                                      style: requirementsTextStyle,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/dot.png',
                                      width: 12,
                                      height: 12,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      "Assessing and anticipating needs and \ncollaborate with Division.",
                                      style: requirementsTextStyle,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            isApplied
                                ? cancelButton()
                                : applyButton(
                                    showBackButton:
                                        true), // Menambahkan showBackButton di sini
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 104.0, top: 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Message Recruiter',
                                      style: messageButtonTextStyle),
                                  const SizedBox(height: 30),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
