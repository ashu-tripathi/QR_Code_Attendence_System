import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScanner extends StatefulWidget {
  const QrScanner({Key key}) : super(key: key);

  @override
  _QrScannerState createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  final qrkey = GlobalKey(debugLabel: 'QR');
  QRViewController controller;
  BuildContext ctx;

  Barcode barcode;
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

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('QR Scanner Page'),
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            buildQrView(context),
            Positioned(bottom: 10, child: buildResult()), // result method

          ],
        ),
      ),
    );
  }


  Widget buildResult(){

    return
    Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Text(
              barcode != null
                  ? 'Your attendance marked Successfully'
                  : 'Scan a code', // success message
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
