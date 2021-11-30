import 'package:flutter/material.dart';
class StudentPage extends StatefulWidget {
  const StudentPage({Key key}) : super(key: key);

  @override
  _StudentPageState createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title:Text('Welcome to Student Portal'),backgroundColor: Colors.teal,),
        body: Container(),
      ),
    );
  }
}
