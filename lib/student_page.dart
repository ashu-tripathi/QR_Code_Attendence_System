import 'package:flutter/material.dart';
import 'package:qr_code_attendence_system/nav_bar_stu.dart';

class StudentPage extends StatefulWidget {
  const StudentPage({Key key}) : super(key: key);

  @override
  _StudentPageState createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,
        drawer: NavBarStu(),
        appBar: AppBar(
          title: Text('Welcome to Student Portal'),
          backgroundColor: Colors.teal,
        ),
        body: Container(
            margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Date:- 5th Feb 2022',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Day:-Saturday',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black,
                  height: 20,
                  thickness: 2,
                ),
                SizedBox(height: 15),
                Container(
                    child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Leture 1',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('Lecture Timings:- 10 Am - 11 Am'),
                            Text('Sub Name:-MNG'),
                            Text('Subject Code:-MBAH 001'),
                            Text('Room No:-4001'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
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
                          'Qr Generator',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ],
                )),
                SizedBox(height: 15),
                Container(
                    child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Leture 2',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('Lecture Timings:- 11 Am - 12 Pm'),
                            Text('Sub Name:-Agile'),
                            Text('Subject Code:-AGLE 001'),
                            Text('Room No:-4002'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
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
                          'Qr Generator',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ],
                )),
                SizedBox(height: 15),
                Container(
                    child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Leture 3',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('Lecture Timings:- 1 Pm - 2 Pm'),
                            Text('Sub Name:-Industrial MNG'),
                            Text('Subject Code:-INDM 001'),
                            Text('Room No:-4003'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
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
                          'Qr Generator',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ],
                )),
                SizedBox(height: 15),
                Container(
                    child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Leture 4',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('Lecture Timings:- 2 Pm - 3 Pm'),
                            Text('Sub Name:-Compiler'),
                            Text('Subject Code:-COMP 001'),
                            Text('Room No:-4004'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
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
                          'Qr Generator',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ],
                )),
                Divider(
                  color: Colors.black,
                  height: 65,
                  thickness: 2,
                ),
              ],
            )),
      ),
    );
  }
}
