import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pegadaian_training_job_portal/presentation/feature/home/home_screen.dart';
import 'package:pegadaian_training_job_portal/presentation/feature/login/bloc/login_bloc.dart';
import 'package:pegadaian_training_job_portal/presentation/feature/login/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: MaterialApp(
        title: 'Flutter Bloc Login',
        initialRoute: '/',
        routes: {
          '/': (context) => LoginScreen(),
          '/home': (context) => HomeScreen(),
        },
      ),
    );
  }
}
