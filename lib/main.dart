import 'package:flutter/material.dart';
import 'package:qr_code_attendence_system/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      home:WelcomeScreen(),
    );
  }
}

