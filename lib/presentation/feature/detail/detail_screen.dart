import 'package:flutter/material.dart'; // Impor Flutter Material untuk UI widget
import 'package:google_fonts/google_fonts.dart'; // Impor Google Fonts untuk custom font
import 'package:pegadaian_training_job_portal/theme.dart'; // Impor custom theme untuk styling text dan widget

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isApplied = false;
  @override
  Widget build(BuildContext context) {
    Widget applyButton() {
      return Padding(
        padding: const EdgeInsets.only(
          top: 51.0,
          left: 80,
        ),
        child: Container(
          width: 200,
          height: 45,
          child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  66,
                ),
              ),
              backgroundColor: Color(0xff4141A4),
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
      );
    }

    Widget cancelButton() {
      return Padding(
        padding: const EdgeInsets.only(
          top: 51.0,
          left: 80,
        ),
        child: Container(
          width: 200,
          height: 45,
          child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  66,
                ),
              ),
              backgroundColor: Color(0xffFD4F56),
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

    Widget successAppliedMessages() {
      return Container(
        padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: Color(0xffECEDF1),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Text(
          'You have applied this job and the \nrecruiter will contact you',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            color: Color(0xffA2A6B4),
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
              SizedBox(
                height: 80,
              ),
              isApplied ? successAppliedMessages() : SizedBox(),
              Image.asset(
                'assets/google-icon.png',
                width: 60,
                height: 60,
              ),
              SizedBox(height: 20),
              Text(
                'Front-End Developer',
                style: jobApplyTextStyle,
              ),
              Text(
                'Google, Inc • Jakarta',
                style: companyTextStyle,
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About the job',
                      style: titleRequirements,
                    ),
                    SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Full-Time On Site',
                              style: requirementsTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Image.asset(
                              'assets/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Start at \$18,000 per month',
                              style: requirementsTextStyle,
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Qualifications',
                          style: titleRequirements,
                        ),
                        SizedBox(height: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/dot.png',
                                  width: 12,
                                  height: 12,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Candidate must possess at least a \nBachelor's Degree.",
                                  style: requirementsTextStyle,
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/dot.png',
                                  width: 12,
                                  height: 12,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Able to use Microsoft Office and Google \nbased service.",
                                  style: requirementsTextStyle,
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/dot.png',
                                  width: 12,
                                  height: 12,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Have an excellent time management, \ngood at organized and details",
                                  style: requirementsTextStyle,
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Responsibilities',
                              style: titleRequirements,
                            ),
                            SizedBox(height: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/dot.png',
                                      width: 12,
                                      height: 12,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "Initiate and promote any programs, events, \ntraining, or activities.",
                                      style: requirementsTextStyle,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/dot.png',
                                      width: 12,
                                      height: 12,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "Assessing and anticipating needs and \ncollaborate with Division.",
                                      style: requirementsTextStyle,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            isApplied ? cancelButton() : applyButton(),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 104.0,
                                top: 20,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Message Recruiter',
                                    style: messageButtonTextStyle,
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
