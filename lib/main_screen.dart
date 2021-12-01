import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(' QR Attendence Portal'),
          backgroundColor: Colors.green,
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    Image(
                      height: 60,
                      image: AssetImage('images/teacher1.png'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Faculty Login',
                      style: TextStyle(
                          fontFamily: 'Pacifico', fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    ButtonTheme(
                      minWidth: 50.0,
                      child: RaisedButton(
                        elevation: 10.0,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/LoginScreen');
                        },

                        // color: Color(0xff311b92),
                        color: Colors.green,
                        textColor: Colors.white,
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 50.0,
                      child: RaisedButton(
                        elevation: 10.0,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/FacultyPage');
                        },

                        // color: Color(0xff311b92),
                        color: Colors.green,
                        textColor: Colors.white,
                        child: Text(
                          'FacPage',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Image(
                      height: 60,
                      image: AssetImage('images/student3.png'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Student Login',
                      style: TextStyle(
                          fontFamily: 'Pacifico', fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    ButtonTheme(
                      minWidth: 50.0,
                      child: RaisedButton(
                        elevation: 10.0,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/RegistrationScreen');
                        },

                        // color: Color(0xff311b92),
                        color: Colors.green,
                        textColor: Colors.white,
                        child: Text(
                          'Register',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 50.0,
                      child: RaisedButton(
                        elevation: 10.0,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/StudentPage');
                        },

                        // color: Color(0xff311b92),
                        color: Colors.green,
                        textColor: Colors.white,
                        child: Text(
                          'StudtPage',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Image(
                      height: 60,
                      image: AssetImage('images/aboutus.png'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'About Us!',
                      style: TextStyle(
                          fontFamily: 'Pacifico', fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    ButtonTheme(
                      minWidth: 50.0,
                      child: RaisedButton(
                        elevation: 10.0,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/AboutUs');
                        },

                        // color: Color(0xff311b92),
                        color: Colors.green,
                        textColor: Colors.white,
                        child: Text(
                          'Click',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
