import 'package:flutter/material.dart';
import 'package:pegadaian_training_job_portal/presentation/feature/home/home_screen.dart';
import 'package:pegadaian_training_job_portal/theme.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay 3 detik sebelum pindah ke home screen
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) =>
                HomeScreen()), // Ganti dengan kelas home screen Anda
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4141A4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                'assets/images/logo.png',
                height: 76,
                width: 59,
              ),
              padding: EdgeInsets.only(top: 20),
            ),
            SizedBox(height: 50),
            Text(
              'FUTURE JOBS',
              style: splashTextStyle,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            )
          ],
        ),
      ),
    );
  }
}
