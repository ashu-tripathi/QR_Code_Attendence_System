import 'package:flutter/material.dart';

class QrScanner extends StatefulWidget {
  const QrScanner({Key key}) : super(key: key);

  @override
  _QrScannerState createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('QR Scanner Page'),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}