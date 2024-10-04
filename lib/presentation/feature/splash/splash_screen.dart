import 'package:flutter/material.dart';
import 'package:pegadaian_training_job_portal/presentation/feature/home/home_screen.dart';
import 'package:pegadaian_training_job_portal/presentation/feature/login/login_screen.dart';
import 'package:pegadaian_training_job_portal/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4141A4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset(
                'assets/images/logo.png',
                height: 76,
                width: 59,
              ),
            ),
            const SizedBox(height: 50),
            Text(
              'JOB PORTAL',
              style: splashTextStyle,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
            )
          ],
        ),
      ),
    );
  }
}
