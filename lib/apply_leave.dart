import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ApplyLeave extends StatefulWidget {
  const ApplyLeave({Key key}) : super(key: key);

  @override
  _ApplyLeaveState createState() => _ApplyLeaveState();
}

class _ApplyLeaveState extends State<ApplyLeave> {
  DateTime date;
  TimeOfDay time;
  String getDay() {
    if (date == null) {
      return 'Select';
    } else {
      return '${date.month}/${date.day}/${date.year}';
    }
  }

  String getTime() {
    if (time == null) {
      return 'Select Time';
    } else {
      return '${time.hour}/${date.minute}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        constraints: BoxConstraints.expand(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Apply For Leave'),
            backgroundColor: Colors.teal,
          ),
          body: Container(
              margin: EdgeInsets.only(top: 20),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'From Date',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RaisedButton(
                            child: Text(
                              getDay(),
                              style: TextStyle(fontSize: 17),
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
                          RaisedButton(
                            child: Text(
                              getTime(),
                              style: TextStyle(fontSize: 17),
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
                      SizedBox(height: 15),
                      Text(
                        'To Date',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RaisedButton(
                                child: Text(
                                  getDay(),
                                  style: TextStyle(fontSize: 17),
                                ),
                                onPressed: () {
                                  showDatePicker(
                                    context: context,
                                    initialDate:
                                        date == null ? DateTime.now() : date,
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
                                }),
                            RaisedButton(
                              child: Text(
                                getTime(),
                                style: TextStyle(fontSize: 17),
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
                      SizedBox(height: 15),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Purpose:-',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Place:-',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Address:-',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Application:-',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
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
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
