import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:qr_code_attendence_system/reference.dart';

class QrScanner extends StatefulWidget {
  const QrScanner({Key key}) : super(key: key);

  @override
  _QrScannerState createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  final qrkey = GlobalKey(debugLabel: 'QR');
  QRViewController controller;
  Barcode barcode;
  int threshold = 5; // 5 sec threshold
  int timeofscan = 0;
  int timeofgen = 0;
  int thresholdcheck = 0;
  int gentime = Reference().generatetime;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void reassemble() async {
    super.reassemble();
    if (Platform.isAndroid) {
      controller.pauseCamera();
    } else if (Platform.isIOS) {
      controller.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    DateTime qrscan = new DateTime.now();
    int day = qrscan.day;
    int hr = qrscan.hour;

    int min = qrscan.minute;
    int sec = qrscan.second;

    timeofscan = day * 24 + hr * 60 + min * 60 + sec;

    thresholdcheck = timeofscan - gentime;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('QR Scanner Page'),
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Text('$timeofscan',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),

            buildQrView(context),
            Positioned(bottom: 10, child: buildResult()), // result method
          ],
        ),
      ),
    );
  }

  Widget buildResult() {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Text(
        (thresholdcheck <= threshold)
            ? 'Your attendance marked Successfully'
            : 'Scan a code',
        maxLines: 3,
      ),
    );
  }

  Widget buildQrView(BuildContext context) => QRView(
        key: qrkey,
        onQRViewCreated: onQrViewCreated,
        overlay: QrScannerOverlayShape(
          cutOutSize: MediaQuery.of(context).size.width * 0.8,
          borderWidth: 10,
          borderColor: Colors.white,
          borderRadius: 10,
          borderLength: 20,
        ),
      );
  void onQrViewCreated(QRViewController controller) {
    // setState(() => this.controller = controller);
    this.controller = controller;
    controller.scannedDataStream.listen(
      (barcode) => setState(() => this.barcode = barcode),
    );
  }
}
