import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart' show FirebaseFirestore;

import 'package:qr_code_attendence_system/regex_validator.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:path/path.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:rich_alert/rich_alert.dart';
import 'package:qr_code_attendence_system/helperfunction.dart';

class RegistrationScreen extends StatefulWidget {
  final String id = 'RegistrationScreen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  bool showSpinner = false;
  final _auth = FirebaseAuth.instance;
  String email;
  String username;
  String password;
  String role;
  File _image;
  double feedbackValue;
  double feedbackRate;

  // String feedback = "0";
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

  void _addToDatabase(String userName, String dpUrl) {
    print('dpurl is: $dpUrl');
    List<String> splitList = username.split(" ");
    List<String> indexList = [];

    for (int i = 0; i < splitList.length; i++) {
      for (int y = 1; y < splitList[i].length + 1; y++) {
        indexList.add(splitList[i].substring(0, y).toLowerCase());
      }
    }
    // print(indexList);
    FirebaseFirestore.instance.collection('users').doc(username).set({
      'username': userName,
      'searchKeywords': indexList,
      'profileURL': dpUrl,
      'email': email,
      'role': role,
      'feedbackValue': 0.0,
      'feedbackRate': 0.0,
    });
  }

  Future uploadPic(BuildContext context) async {
    String fileName = basename(_image.path);
    Reference firebaseStorageRef =
    FirebaseStorage.instance.ref().child(fileName);
    UploadTask uploadTask = firebaseStorageRef.putFile(_image);
    var dowUrl = await (await uploadTask.whenComplete(() {})).ref.getDownloadURL();
    url = dowUrl.toString();
    print(url);
    TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() {});
    setState(() {
      print("Profile Picture uploaded");
      // Scaffold.of(context)
      //     .showSnackBar(SnackBar(content: Text('Profile Picture Uploaded')));
    });
  }

  assignRole() {
    if (email.contains('_')) {
      setState(() {
        role = "Student";
      });
    } else {
      setState(() {
        role = "Professor";
      });
    }
  }

  bool _validateInputs() {
    if (_formKey.currentState.validate()) {
//    If all data are correct then save data to out variables
      _formKey.currentState.save();

      return true;
    } else {
//    If all data are not valid then start auto validation.
      setState(() {
        _autoValidate = true;
      });
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/app-background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      constraints: BoxConstraints.expand(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        resizeToAvoidBottomPadding: true,
        backgroundColor: Colors.transparent,
        body: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                      top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                       Image.asset(
                        'images/mainlogo.png',
                         height: 60,
                         color: Colors.white,
                      ),
                      SizedBox(height:20),
                      Text(
                        'Qr Attendence Portal',
                         style: TextStyle(
                        fontFamily: 'Lobster',
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                      ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, right: 16.0, top: 25, bottom: 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'New',
                                      style:TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      'Account',
                                      style:TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  child: Stack(
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
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Flexible(
                              fit: FlexFit.loose,
                              child: Form(
                                key: _formKey,
                                autovalidate: _autoValidate,
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: const InputDecoration(
                                        icon: Icon(Icons.email),
                                        hintText: 'Enter your Email',
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        labelText: 'Email *',
                                      ),
                                      validator: RegexValidator.validateEmail,
                                      onSaved: (String value) {
                                        // This optional block of code can be used to run
                                        // code when the user saves the form.
                                        email = value;
                                      },
                                      // onChanged: (String value) {
                                      //   // This optional block of code can be used to run
                                      //   // code when the user saves the form.
                                      //   email = value;
                                      // },
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        icon: Icon(Icons.person),
                                        hintText: 'Enter Username',
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        labelText: 'ID *',
                                      ),
                                      validator:
                                      RegexValidator.validateUserName,
                                      onSaved: (String value) {
                                        username = value;
                                      },
                                      // onChanged: (String value) {
                                      //   // This optional block of code can be used to run
                                      //   // code when the user saves the form.
                                      //   username = value;
                                      // },
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    TextFormField(
                                      decoration: const InputDecoration(
                                        icon: Icon(Icons.lock),
                                        hintText: 'Enter the password',
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                        labelText: 'Password *',
                                      ),
                                      obscureText: true,
                                      validator:
                                      RegexValidator.validatePassword,
                                      onSaved: (String value) {
                                        password = value;
                                      },
                                      // onChanged: (String value) {
                                      //   // This optional block of code can be used to run
                                      //   // code when the user saves the form.
                                      //   password = value;
                                      // },
                                    ),
                                    SizedBox(
                                      height: 50.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 30.0,
                                      ),
                                      child: RaisedButton(
                                        elevation: 10.0,
                                        shape: StadiumBorder(),
                                        color: Colors.lightBlueAccent,
                                        onPressed: () async {
                                          bool isShowSpinner =
                                          _validateInputs();
                                          setState(() {
                                            showSpinner = isShowSpinner;
                                          });
                                          try {
                                            // final newUser = await _auth
                                            //     .createUserWithEmailAndPassword(
                                            //         email: email,
                                            //         password: password);
                                            assignRole();

                                            await _auth
                                                .createUserWithEmailAndPassword(
                                                email: email,
                                                password: password)
                                                .then((newUser) {
                                              if (newUser != null) {
                                                HelperFunctions
                                                    .saveUserLoggedInSharedPreference(
                                                    true);
                                                HelperFunctions
                                                    .saveUserNameSharedPreference(
                                                    username);
                                                HelperFunctions
                                                    .saveUserEmailSharedPreference(
                                                    email);
                                                HelperFunctions
                                                    .saveUserPhotoUrlSharedPreference(
                                                    url);
                                                HelperFunctions
                                                    .saveUserRoleSharedPreference(
                                                    role);

                                                Navigator.pushNamed(
                                                    context, '/FacultyPage');
                                              }
                                            });

                                            if (_image != null) {
                                              await uploadPic(context);
                                            }

                                            _addToDatabase(username, url);

                                            setState(() {
                                              showSpinner = false;
                                            });
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return RichAlertDialog(
                                                    //uses the custom alert dialog
                                                    alertTitle:
                                                    richTitle("CONGRATS!"),
                                                    alertSubtitle: richSubtitle(
                                                        "Your assign role is ${role.toUpperCase()}"),
                                                    alertType:
                                                    RichAlertType.SUCCESS,
                                                  );
                                                });
                                          } catch (e) {
                                            print(e.message);
                                            if (e.message ==
                                                "The email address is already in use by another account.") {
                                              setState(() {
                                                showSpinner = false;
                                              });
                                              showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return RichAlertDialog(
                                                      //uses the custom alert dialog
                                                      alertTitle: richTitle(
                                                          "Try Again"),
                                                      alertSubtitle: richSubtitle(
                                                          "Already registered with this email id."),
                                                      alertType:
                                                      RichAlertType.WARNING,
                                                      actions: <Widget>[
                                                        RaisedButton(
                                                          color: Colors.red,
                                                          child: Text(
                                                            "OK",
                                                            style: TextStyle(),
                                                          ),
                                                          onPressed: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                        ),
                                                      ],
                                                    );
                                                  });
                                            }
                                          }
                                        },
                                        child: Text(
                                          'Sign up',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          vertical: 15.0,
                                          horizontal: 60.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
