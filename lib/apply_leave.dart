import 'package:flutter/material.dart';

class ApplyLeave extends StatefulWidget {
  const ApplyLeave({Key key}) : super(key: key);

  @override
  _ApplyLeaveState createState() => _ApplyLeaveState();
}

class _ApplyLeaveState extends State<ApplyLeave> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(



        appBar: AppBar(
          title: Text('Apply For Leave'),
          backgroundColor: Colors.teal,
        ),

      ),
    );
  }
}
