import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactDetails extends StatelessWidget {
  const ContactDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Hierarchy'),
          backgroundColor: Colors.teal,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/hierarchy_pic.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Column(
                  children: [
                    Text(
                      "Rohit Agrawal",
                      style: TextStyle(fontSize: 17, color: Colors.teal),
                    ),
                    Text(
                      "Head of Department",
                      style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                  
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 5,
                thickness: 1,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Rakesh Kumar Galav",
                    style: TextStyle(fontSize: 17, color: Colors.teal),
                  ),
                  Text(
                    "Program Co-Ordinator",
                    style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),
                  ),

                ],
              ),
              Divider(
                color: Colors.black,
                height: 5,
                thickness: 1,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Madhu Sudan Kumar",
                    style: TextStyle(fontSize: 17, color: Colors.teal),
                  ),
                  Text(
                    "Class Advisor",
                    style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "madhusudan.kumar@gla.ac.in",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "7488044629",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.teal,
                        ),
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
                height: 5,
                thickness: 1,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Ram Manohar Nisarg Ns",
                    style: TextStyle(fontSize: 17, color: Colors.teal),
                  ),
                  Text(
                    "Faculty",
                    style: TextStyle(fontSize: 20,color:Colors.black,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "rammanohar.nisarg@gla.ac.in",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "9008484726",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.teal,
                        ),
                  ),

                ],
              ),
              Divider(
                color: Colors.black,
                height: 5,
                thickness: 1,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Manoj Kumar Agrawal",
                    style: TextStyle(fontSize: 17, color: Colors.teal),
                  ),
                  Text(
                    "Faculty",
                    style: TextStyle(fontSize: 20,color:Colors.black,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "manoj.agrawal@gla.ac.in",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "9897332142",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.teal,
                       ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
