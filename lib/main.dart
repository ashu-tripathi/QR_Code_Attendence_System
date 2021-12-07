import 'package:flutter/material.dart';
import 'package:qr_code_attendence_system/welcome_screen.dart';
import 'package:qr_code_attendence_system/main_screen.dart';
import 'package:qr_code_attendence_system/login_screen.dart';
import 'package:qr_code_attendence_system/registration_screen.dart';
import 'package:qr_code_attendence_system/student_page.dart';
import 'package:qr_code_attendence_system/faculty_page.dart';
import 'package:qr_code_attendence_system/aboutus.dart';
import 'package:qr_code_attendence_system/qr_generator.dart';
import 'package:qr_code_attendence_system/qr_scanner.dart';
import 'package:firebase_core/firebase_core.dart';

 import 'helperfunction.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool userIsLoggedIn = true;

  @override
  void initState() {
    getLoggedInState();
    super.initState();
  }

  getLoggedInState() async {
    bool value = await HelperFunctions.getUserLoggedInSharedPreference();
    setState(() {
      userIsLoggedIn = value;
    });

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Team 27 Major Project',
      initialRoute:'/', // already logined hai then kese krna
      routes: {
        '/': (context) => WelcomeScreen(),
        '/MainScreen': (context) => MainScreen(),
        '/LoginScreen': (context) => LoginScreen(),
        '/RegistrationScreen': (context) => RegistrationScreen(),
        '/StudentPage': (context) => StudentPage(),
        '/FacultyPage': (context) => FacultyPage(),
        '/AboutUs': (context) => AboutUs(),
        '/QrGenerator': (context) => QrGenerator(),
        '/QrScanner': (context) => QrScanner(),
      },
    );
  }
}
