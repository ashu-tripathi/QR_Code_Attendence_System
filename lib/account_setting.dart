import 'package:flutter/material.dart';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

import 'package:path/path.dart';

class AccountSetting extends StatefulWidget {
  @override
  _AccountSettingState createState() => _AccountSettingState();
}

class _AccountSettingState extends State<AccountSetting> {
  File _image;
  String url =
      'https://firebasestorage.googleapis.com/v0/b/comperio-1071d.appspot.com/o/default-profile.webp?alt=media&token=c737b18e-9625-4b0d-8d7c-8ef5794486f3';
  Future getImages() async {
    PickedFile pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);
    var image = File(pickedFile.path);

    setState(() {
      _image = image;
      // print('Image path $_image');
    });
  }

  Future uploadPic(BuildContext context) async {
    String fileName = basename(_image.path);
    Reference firebaseStorageRef =
        FirebaseStorage.instance.ref().child(fileName);
    UploadTask uploadTask = firebaseStorageRef.putFile(_image);
    var dowUrl =
        await (await uploadTask.whenComplete(() {})).ref.getDownloadURL();
    url = dowUrl.toString();
    print(url);
    // TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() {});
    // setState(() {
    //   print("Profile Picture uploaded");
    //   // Scaffold.of(context)
    //   //     .showSnackBar(SnackBar(content: Text('Profile Picture Uploaded')));  setstate ke already comm tha
    // });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Account Settings'),
          backgroundColor: Colors.teal,
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    overflow: Overflow.visible,
                    children: [
                      Container(
                        width: 80.0,
                        height: 80.0,
                        child: CircleAvatar(
                          radius: 40.0,
                          backgroundColor: Colors.black12,
                          child: ClipOval(
                            child: SizedBox(
                              width: 80.0,
                              height: 80.0,
                              child: (_image != null)
                                  ? Image.file(
                                      _image,
                                      fit: BoxFit.fill,
                                    )
                                  : Image.asset(
                                      'images/default-profile.jpg',
                                      fit: BoxFit.fill,
                                    ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: -1,
                        right: -30,
                        bottom: -40,
                        left: 40,
                        child: IconButton(
                          icon: Icon(
                            Icons.camera,
                            color: Colors.blueAccent,
                            size: 20,
                          ),
                          onPressed: () {
                            getImages();
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text('Change Your Photo'),
                  SizedBox(height: 15),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Change Email:-',
                      hintStyle: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Change Name:-',
                      hintStyle: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Change Roll No.:-',
                      hintStyle: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Change Phone No.:-',
                      hintStyle: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Change Your Password',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          width: 175,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Current Password:-',
                                  hintStyle: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                obscureText: true,
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'New Password:-',
                                  hintStyle: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                obscureText: true,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ButtonTheme(
                    minWidth: 25,
                    child: RaisedButton(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/FacultyPage');
                      },
                      color: Colors.teal,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Save',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
