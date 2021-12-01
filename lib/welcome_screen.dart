import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('images/welcomePagePic.jpg'), // background image
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: AssetImage(
                            'images/logo2.jpg',
                          ),
                          height: 110.0,
                          width: 170.0,
                        ),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      Center(
                        child: Text('Welcome to QR',
                            style: TextStyle(
                              fontFamily: 'Lobster',
                              letterSpacing: 1.5,
                              color: Color(0xFF27A0E6),
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                              shadows: [
                                Shadow(
                                  color: Color(0xFF81d4fa),
                                  blurRadius: 4.0,
                                  offset: Offset(4, 1),
                                )
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Text('Attendence Portal!',
                            style: TextStyle(
                              fontFamily: 'Lobster',
                              letterSpacing: 1.5,
                              color: Color(0xFF27A0E6),
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                              shadows: [
                                Shadow(
                                  color: Color(0xFF81d4fa),
                                  blurRadius: 4.0,
                                  offset: Offset(4, 1),
                                )
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 68.0,
                      ),
                      ButtonTheme(
                        minWidth: 300.0,
                        child: RaisedButton(
                          elevation: 10.0,

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/MainScreen');
                          },

                          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                          // color: Color(0xff311b92),
                          color: Colors.green,
                          textColor: Colors.white,
                          child: Text(
                            'Click To Proceed',
                            style: TextStyle(fontSize: 20),
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
      ),
    );
  }
}
