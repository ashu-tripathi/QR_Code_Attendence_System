import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_attendence_system/button_widget.dart';
import 'dart:io' show File;
import 'package:cloud_firestore/cloud_firestore.dart' show FirebaseFirestore;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:qr_code_attendence_system/firebase_api.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:path/path.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class NotesUpload extends StatefulWidget {
  const NotesUpload({Key key}) : super(key: key);

  @override
  _NotesUploadState createState() => _NotesUploadState();
}

class _NotesUploadState extends State<NotesUpload> {
  UploadTask task;
  File file;
  @override
  Widget build(BuildContext context) {
    final fileName = file != null ? basename(file.path) : 'No File Selected';
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Upload Notes Here'),
          backgroundColor: Colors.teal,
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonWidget(
                  text: 'Select File',
                  icon: Icons.attach_file,
                  onClicked: selectFile,
                ),
                SizedBox(height: 15),
                Text(
                  fileName,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 48),
                ButtonWidget(
                  text: 'Upload File',
                  icon: Icons.cloud_upload,
                  onClicked: uploadFile,
                ),
                SizedBox(height: 20),
                task != null ? buildUploadStatus(task) : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);
    if (result == null) return;
    final path = result.files.single.path;
    setState(() => file = File(path));
  }

  Future uploadFile() async {
    if (file == null) return;
    final fileName = basename(file.path);
    final destination = 'files/$fileName';
    task = FirebaseApi.uploadFile(destination, file);
    setState(() {});
    if (task == null) return;
    final snapshot = await task.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();
    // print('Download-Link:$urlDownload');
  }

  Widget buildUploadStatus(UploadTask task) => StreamBuilder<TaskSnapshot>(
        stream: task.snapshotEvents,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final snap = snapshot.data;
            final progress = snap.bytesTransferred / snap.totalBytes;
            final percentage = (progress * 100).toStringAsFixed(2);
            return Text(
              '$percentage%',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            );
          } else {
            return Container();
          }
        },
      );
}
