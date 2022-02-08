import 'package:flutter/material.dart';
import 'package:qr_code_attendence_system/firebase_file.dart';
import 'package:qr_code_attendence_system/firebase_api.dart';
import 'package:qr_code_attendence_system/image_file.dart';

class NotesDownload extends StatefulWidget {
  const NotesDownload({Key key}) : super(key: key);

  @override
  _NotesDownloadState createState() => _NotesDownloadState();
}

class _NotesDownloadState extends State<NotesDownload> {
  Future<List<FirebaseFile>> futureFiles; // yaha se late kha gya me

  @override
  void initState() {
    super.initState();

    futureFiles = FirebaseApi.listAll('files/');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         appBar: AppBar(

           title: Text('Download Your Notes'),
           backgroundColor: Colors.teal,
         ),
        body: Container(decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('images/pic11.png'), // background image
            fit: BoxFit.cover,
          ),
        ),
          constraints: BoxConstraints.expand(),
          child: FutureBuilder<List<FirebaseFile>>(
            future: futureFiles,
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return Center(child: CircularProgressIndicator());
                default:
                  if (snapshot.hasError) {
                    return Center(child: Text('Some error occurred!'));
                  } else {
                    final files = snapshot.data;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildHeader(files.length),
                        Divider(
                          color: Colors.teal,
                          height: 10,
                          thickness: 2,

                        ),
                        const SizedBox(height: 12),
                        Expanded(
                          child: ListView.builder(
                            itemCount: files.length,
                            itemBuilder: (context, index) {
                              final file = files[index];

                              return buildFile(context, file);
                            },
                          ),
                        ),
                      ],
                    );
                  }
              }
            },
          ),
        ),
      ),
    );
  }

  Widget buildFile(BuildContext context, FirebaseFile file) => Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListTile(
          leading: ClipOval(
            child: Image.network(
              file.url,
              width: 52,
              height: 52,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            file.name,
            style: TextStyle(
              // fontWeight: FontWeight.bold,
              // decoration: TextDecoration.underline,
              color: Colors.teal,
            ),
          ),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ImagePage(file: file),
          )),
        ),
      );
  Widget buildHeader(int length) => new ListTile(
        // yaha par color set kro  tileColor: Colors.blue,
        leading: ListTileTheme(
          selectedColor: Colors.blue,
          child: Container(
            width: 100, //52
            height: 100, //52
            child: Icon(
              Icons.insert_drive_file,
              color: Colors.teal,
            ),
          ),
        ),
        title: Text(
          '$length Files',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.teal,
          ),
        ),
      );
}
