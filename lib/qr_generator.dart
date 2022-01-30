import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGenerator extends StatefulWidget {
  const QrGenerator({Key key}) : super(key: key);

  @override
  _QrGeneratorState createState() => _QrGeneratorState();
}

class _QrGeneratorState extends State<QrGenerator> {
  final controller = TextEditingController();

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
                    QrImage(
                      data: controller.text,
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
                    SizedBox(height: 40),
                    buildTextField(context),
                  ],
                )),
          )),
    );
  }

  Widget buildTextField(BuildContext context) => TextField(
        controller: controller,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 28,
        ),
        decoration: InputDecoration(
          hintText: 'Enter the data',
          hintStyle: TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).accentColor),
            borderRadius: BorderRadius.circular(8),
          ),
          suffixIcon: IconButton(
            color: Theme.of(context).accentColor,
            icon: Icon(Icons.done, size: 30),
            onPressed: () => setState(() {}),
          ),
        ),
      );
}
