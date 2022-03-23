import 'dart:async';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_code_attendence_system/reference.dart';
import 'package:intl/intl.dart';

class QrGenerator extends StatefulWidget {
  const QrGenerator({Key key}) : super(key: key);

  @override
  _QrGeneratorState createState() => _QrGeneratorState();
}

class _QrGeneratorState extends State<QrGenerator> {
  Timer timer;

  String time = DateFormat('ddkkmmss').format(DateTime.now());
  void getTime() {
    DateTime qrgen = new DateTime.now();
    int day = qrgen.day;
    int hr = qrgen.hour;

    int min = qrgen.minute;
    int sec = qrgen.second;

    int timeofgen = 24 * day + hr * 60 + min * 60 + sec;

    String newtime = '$day' + '$hr' + '$min' + '$sec';

    setState(() {
      time = newtime;
      Reference(generatetime: timeofgen);
    });
  }

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 5), (Timer t) => getTime());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('QR Generator Page'),
          backgroundColor: Colors.teal,
        ),
        backgroundColor: Colors.black12,
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  time,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                SizedBox(height: 30),
                QrImage(
                  data: time,
                  size: 200,
                  backgroundColor: Colors.white,
                  errorStateBuilder: (cxt, err) {
                    return Container(
                      child: Center(
                        child: Text(
                          "Uh oh! Something went wrong...",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: 100),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Text(
                    'Please Scan Within 5 Sec',
                    maxLines: 3,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
