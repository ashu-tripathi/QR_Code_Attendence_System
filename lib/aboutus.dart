import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('About Our Team'),
          backgroundColor: Colors.teal,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/app-background-2.jpg'),
              fit: BoxFit.cover,
            ),
          ),

            child: Column(
              children: [
                Container(margin: EdgeInsets.only(top:30,left:30,right:30),
                  height: 200,

                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        child: ClipOval(
                          child: Image.asset('images/shashank.jpg',
                              width: 300, height: 300, fit: BoxFit.cover),
                        ),
                      ),
                      Text(
                        "Shashank Agrawal",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      Text(
                        "181500652 (H-55)",
                        style: TextStyle(fontSize: 21, color: Colors.white),
                      ),

                      Text(
                        "shashank.agrawal_cs18@gla.ac.in",
                        style: TextStyle(fontSize: 18, color: Colors.indigo),
                      ),
                      Text(
                        "6388435519",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Divider(

                  color: Colors.white,
                  height: 10,
                  thickness: 1,
                ),
              ],
            ),

        ),
      ),
    );
  }
}
