import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModifyAttendance extends StatefulWidget {
  const ModifyAttendance({Key key}) : super(key: key);

  @override
  _ModifyAttendanceState createState() => _ModifyAttendanceState();
}

class _ModifyAttendanceState extends State<ModifyAttendance> {
  int _value = 1;
  Widget build(BuildContext context) {
    DateTime date;
    TimeOfDay time;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Attendance Modify Portal'),
          backgroundColor: Colors.teal,
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter Name / Roll No.:-',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Date:-',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        RaisedButton(
                          child: Text(
                            'Select Date',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            showDatePicker(
                              context: context,
                              initialDate: date == null ? DateTime.now() : date,
                              firstDate: DateTime(DateTime.now().year - 5),
                              lastDate: DateTime(DateTime.now().year + 5),
                            ).then(
                              (date) {
                                setState(
                                  () {
                                    date = date;
                                  },
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Time:-',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        RaisedButton(
                          child: Text(
                            'Select Time',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            final initialTime = TimeOfDay(hour: 7, minute: 00);
                            showTimePicker(
                                    context: context,
                                    initialTime: time ?? initialTime)
                                .then(
                              (time) {
                                setState(
                                  () {
                                    time = time;
                                  },
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mark Him / her As:-',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              RadioListTile(
                                  value: 1,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      value = value;
                                    },);
                                  },),
                              Text('Present'),
                              RadioListTile(
                                  value: 2,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      value = value;
                                    });
                                  }),
                              Text('Absent'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
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
                          'Submit',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
