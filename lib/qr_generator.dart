import 'package:flutter/material.dart';

class QrGenerator extends StatefulWidget {
  const QrGenerator({Key key}) : super(key: key);

  @override
  _QrGeneratorState createState() => _QrGeneratorState();
}

class _QrGeneratorState extends State<QrGenerator> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('QR Generator Page'),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}