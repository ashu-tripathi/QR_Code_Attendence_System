import 'package:flutter/material.dart';
import 'package:qr_code_attendence_system/welcome_screen.dart';
import 'package:qr_code_attendence_system/main_screen.dart';
import 'package:qr_code_attendence_system/login_screen.dart';
import 'package:qr_code_attendence_system/registration_screen.dart';
import 'package:qr_code_attendence_system/student_page.dart';
import 'package:qr_code_attendence_system/faculty_page.dart';
import 'package:qr_code_attendence_system/aboutus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Team 27 Major Project',
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/MainScreen': (context) => MainScreen(),
        '/LoginScreen':(context)=>LoginScreen(),
        '/RegistrationScreen':(context)=>RegistrationScreen(),
        '/StudentPage':(context)=>StudentPage(),
        '/FacultyPage':(context)=>FacultyPage(),
        '/AboutUs':(context)=>AboutUs(),


      },
    );
  }
}
