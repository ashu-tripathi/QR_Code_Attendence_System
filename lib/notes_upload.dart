import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotesUpload extends StatefulWidget {
  const NotesUpload({Key key}) : super(key: key);

  @override
  _NotesUploadState createState() => _NotesUploadState();
}

class _NotesUploadState extends State<NotesUpload> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Upload Notes Here'),
          backgroundColor: Colors.teal,
        ),
        body: Container(

        ),
      ),
    );
  }
}
