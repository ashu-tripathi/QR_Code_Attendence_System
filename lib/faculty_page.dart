import 'package:flutter/material.dart';
class FacultyPage extends StatefulWidget {
  const FacultyPage({Key key}) : super(key: key);

  @override
  _FacultyPageState createState() => _FacultyPageState();
}

class _FacultyPageState extends State<FacultyPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title:Text('Welcome to Faculty Portal'),backgroundColor: Colors.teal,),
        body: Container(),
      ),
    );
  }
}
