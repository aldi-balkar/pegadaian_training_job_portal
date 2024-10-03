import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pegadaian_training_job_portal/presentation/feature/home/widgets/custom_list.dart';
import 'package:pegadaian_training_job_portal/presentation/feature/home/widgets/job_card.dart';
import 'package:pegadaian_training_job_portal/theme.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 30, left: 24, right: 24),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Aldi Balkar', // Pastikan nama ditulis dengan benar
                    style: subTitleTextStyle,
                  ),
                ],
              ),
              Spacer(), // Perbaiki posisi Spacer
              Image.asset(
                'assets/images/user_pic.png', // Pastikan path gambar benar
                width: 58,
                height: 58,
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                'Categories',
                style: GoogleFonts.poppins(
                  color: Color(0xff272C2F),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 24,
                ),
                child: Row(
                  children: [
                    JobCard(
                      text: 'Website Developer',
                      imageUrl: 'assets/images/card_category.png',
                    ),
                    SizedBox(width: 16),
                    JobCard(
                      text: 'Mobile Developer',
                      imageUrl: 'assets/images/card_category2.png',
                    ),
                    SizedBox(width: 16),
                    JobCard(
                      text: 'App Designer',
                      imageUrl: 'assets/images/card_category_three.png',
                    ),
                    SizedBox(width: 16),
                    JobCard(
                      text: 'Content Writer',
                      imageUrl: 'assets/images/card_category_four.png',
                    ),
                    SizedBox(width: 16),
                    JobCard(
                      text: 'Video Grapher',
                      imageUrl: 'assets/images/card_category_five.png',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                'Just Posted',
                style: GoogleFonts.poppins(
                  color: Color(0xff272C2F),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 24.0),
              child: CustomList(
                imageUrl: 'assets/images/google-icon.png',
                jobTitle: 'Front-End Developer',
                companyName: 'Google',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 24.0),
              child: CustomList(
                imageUrl: 'assets/images/instagram-icon.png',
                jobTitle: 'UI Designer',
                companyName: 'Instagram',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 24.0),
              child: CustomList(
                imageUrl: 'assets/images/facebook-icon.png',
                jobTitle: 'Data Scientist',
                companyName: 'Facebook',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 24.0),
              child: CustomList(
                imageUrl: 'assets/images/google-icon.png',
                jobTitle: 'Data Scientist',
                companyName: 'Facebook',
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 30),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          unselectedItemColor: Color(0xffB3B5C4),
          selectedItemColor: Color(0xff272C2F),
          currentIndex: 0,
          elevation: 0,
          iconSize: 24,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/navbar_one.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/navbar_two.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/navbar_three.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/navbar_four.png'),
              ),
              label: '',
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            body(),
          ],
        ),
      ),
    );
  }
}
