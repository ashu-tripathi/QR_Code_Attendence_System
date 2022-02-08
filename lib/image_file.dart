import 'package:flutter/material.dart';
import 'package:qr_code_attendence_system/firebase_api.dart';
import 'package:qr_code_attendence_system/firebase_file.dart';
class ImagePage extends StatelessWidget {
  final FirebaseFile file;

  const ImagePage({
    Key key,
    this.file,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isImage = ['.jpeg', '.jpg', '.png'].any(file.name.contains);

    return Scaffold(
      appBar: AppBar(
        title: Text(file.name),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.file_download),
            onPressed: () async {
              await FirebaseApi.downloadFile(file.ref);

              final snackBar = SnackBar(
                content: Text('Downloaded ${file.name}'),
              );
              Scaffold.of(context).showSnackBar(snackBar);
            },
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: isImage    // agar video krni hogi then yahi kuch edit
          ? Image.network(
        file.url,
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      )
          : Center(
        child: Text(
          'Cannot be displayed',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}