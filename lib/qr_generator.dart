import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGenerator extends StatefulWidget {
  const QrGenerator({Key key}) : super(key: key);

  @override
  _QrGeneratorState createState() => _QrGeneratorState();
}

class _QrGeneratorState extends State<QrGenerator> {
  // final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String rollnumber = '181500652'; // ye cheese register se fetch
    DateTime qrgen = new DateTime.now();
    int day = qrgen.day;
    int hr = qrgen.hour;

    int min = qrgen.minute;
    int sec = qrgen.second;

    int timeofgen = 24*day+hr * 60 + min * 60 + sec; //for day * 24 .
    int timeofscan = 15*60+37*60+30; // ye cheese qrscan se fetch 3:37:30
    int threshold = 100; // 100 sec threshold
    int thresholdcheck =timeofscan-timeofgen ;


    String time = '$day' + '$hr' + '$min' + '$sec';
    String finalqrgen = '$rollnumber' + '$time';
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
                  '$finalqrgen',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                SizedBox(height: 30),
                QrImage(

                  data: finalqrgen,
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
                    'Please Scan This Properly',
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
