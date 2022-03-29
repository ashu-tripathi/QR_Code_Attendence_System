import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_attendence_system/nav_bar_fac.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qr_code_attendence_system/choice.dart';
import 'package:qr_code_attendence_system/pop_up_menu.dart';
import 'package:intl/intl.dart';

class FacultyPage extends StatefulWidget {
  const FacultyPage({Key key}) : super(key: key);

  @override
  _FacultyPageState createState() => _FacultyPageState();
}

List<Choice> choices = const <Choice>[
  const Choice(title: 'Log out', icon: FontAwesomeIcons.signOutAlt),
];

class _FacultyPageState extends State<FacultyPage> {

  @override
  Widget build(BuildContext context) {
    String newtime = DateFormat('dd-MMM-yyyy').format(DateTime.now());
    String day=DateFormat('EEEE').format(DateTime.now());
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,
        drawer: NavBarFac(),
        appBar: AppBar(
          title: Row(crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome to Faculty Portal'),
              SizedBox(width:10),
              Expanded(child: ContactPopupMenu(choices: choices)),
            ],
          ),
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
                      'Date :- $newtime',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Day:- $day',
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
