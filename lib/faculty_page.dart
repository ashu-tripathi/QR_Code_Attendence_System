import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_attendence_system/nav_bar_fac.dart';

class FacultyPage extends StatefulWidget {
  const FacultyPage({Key key}) : super(key: key);

  @override
  _FacultyPageState createState() => _FacultyPageState();
}

class _FacultyPageState extends State<FacultyPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavBarFac(),
        appBar: AppBar(
          title: Text('Welcome to Faculty Portal'),
          backgroundColor: Colors.teal,

        ),
        body: Container(
          margin:EdgeInsets.fromLTRB(15,10, 15,10),
          padding: EdgeInsets.all(10),
          child:Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Date:- 12th Dec 2021',style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width:20),
                  Text('Day:-Monday',style: TextStyle(fontWeight: FontWeight.bold),),
                ],

              ),
              Divider(
                color: Colors.black,
                height: 20,
                thickness: 2,

              ),
              SizedBox(height:15),
              Container(
                child:Row(

                  children: [
                    Expanded(

                        child: Padding(
                          padding: const EdgeInsets.only(top:15.0),

                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text('Leture 1',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text('Lecture Timings:- 10 Am - 11 Am'),
                              Text('Sub Name:-MNG'),
                              Text('Subject Code:-MBAH 001'),
                              Text('Room No:-4001'),
                            ],
                          ),
                        ),
                      ),

                    SizedBox(width:5),
                    ButtonTheme(
                      minWidth: 25.0,
                      child: RaisedButton(
                        elevation: 5.0,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/QrGenerator');
                        },

                        // color: Color(0xff311b92),
                        color: Colors.green,
                        textColor: Colors.white,
                        child: Text(
                          'QR Generate',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ],
                )
              ),

              SizedBox(height:15),
              Container(
                  child:Row(

                    children: [
                      Expanded(

                        child: Padding(
                          padding: const EdgeInsets.only(top:15.0),

                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text('Leture 1',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text('Lecture Timings:- 10 Am - 11 Am'),
                              Text('Sub Name:-MNG'),
                              Text('Subject Code:-MBAH 001'),
                              Text('Room No:-4001'),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(width:5),
                      ButtonTheme(
                        minWidth: 25.0,
                        child: RaisedButton(
                          elevation: 5.0,

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/QrGenerator');
                          },

                          // color: Color(0xff311b92),
                          color: Colors.green,
                          textColor: Colors.white,
                          child: Text(
                            'QR Generate',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  )
              ),

              SizedBox(height:15),
              Container(
                  child:Row(

                    children: [
                      Expanded(

                        child: Padding(
                          padding: const EdgeInsets.only(top:15.0),

                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text('Leture 1',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text('Lecture Timings:- 10 Am - 11 Am'),
                              Text('Sub Name:-MNG'),
                              Text('Subject Code:-MBAH 001'),
                              Text('Room No:-4001'),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(width:5),
                      ButtonTheme(
                        minWidth: 25.0,
                        child: RaisedButton(
                          elevation: 5.0,

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/QrGenerator');
                          },

                          // color: Color(0xff311b92),
                          color: Colors.green,
                          textColor: Colors.white,
                          child: Text(
                            'QR Generate',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  )
              ),
              SizedBox(height:15),
              Container(
                  child:Row(

                    children: [
                      Expanded(

                        child: Padding(
                          padding: const EdgeInsets.only(top:15.0),

                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text('Leture 1',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text('Lecture Timings:- 10 Am - 11 Am'),
                              Text('Sub Name:-MNG'),
                              Text('Subject Code:-MBAH 001'),
                              Text('Room No:-4001'),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(width:5),
                      ButtonTheme(
                        minWidth: 25.0,
                        child: RaisedButton(
                          elevation: 5.0,

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/QrGenerator');
                          },

                          // color: Color(0xff311b92),
                          color: Colors.green,
                          textColor: Colors.white,
                          child: Text(
                            'QR Generate',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  )
              ),
              Divider(
                color: Colors.black,
                height: 65,
                thickness: 2,

              ),
            ],

          )
        ),
      ),
    );
  }
}
