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

            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(margin: EdgeInsets.only(top:15),


                  child: Column(
                    children: [

                      CircleAvatar(
                        radius: 30,
                        child: ClipOval(
                          child: Image.asset('images/shashank.jpg',
                              fit: BoxFit.cover,height: 250,width:250),
                        ),
                      ),
                      Text(
                        "Shashank Agrawal",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        "181500652 (H-55)",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),

                      Text(
                        "shashank.agrawal_cs18@gla.ac.in",
                        style: TextStyle(fontSize: 15, color: Colors.lightGreenAccent,fontWeight: FontWeight.bold),
                      ),

                    ],
                  ),
                ),
                Divider(

                  color: Colors.white,
                  height: 10,
                  thickness: 1,
                ),

                Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    CircleAvatar(
                      radius: 30,
                      child: ClipOval(
                        child: Image.asset('images/Ashutosh.jpeg',
                            fit: BoxFit.cover,height: 250,width:250),
                      ),
                    ),
                    Text(
                      "Ashutosh Tripathi",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      "181500152 (H-16)",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),

                    Text(
                      "ashutosh.tripathi_cs18@gla.ac.in",
                      style: TextStyle(fontSize: 15, color: Colors.lightGreenAccent,fontWeight: FontWeight.bold),
                    ),

                  ],
                ),
                Divider(

                  color: Colors.white,
                  height: 10,
                  thickness: 1,
                ),

                Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    CircleAvatar(
                      radius: 30,
                      child: ClipOval(
                        child: Image.asset('images/palash.jpeg',
                            fit: BoxFit.cover,height: 250,width:250),
                      ),
                    ),
                    Text(
                      "Palash Goyal",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      "181500443 (J-27)",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),

                    Text(
                      "palash.goyal_cs18@gla.ac.in",
                      style: TextStyle(fontSize: 15, color: Colors.lightGreenAccent,fontWeight: FontWeight.bold),
                    ),

                  ],
                ),
                Divider(

                  color: Colors.white,
                  height: 10,
                  thickness: 1,
                ),

                Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    CircleAvatar(
                      radius: 30,
                      child: ClipOval(
                        child: Image.asset('images/satyam.jpeg',
                            fit: BoxFit.cover,height: 250,width:250),
                      ),
                    ),
                    Text(
                      "Satyam Merothiya",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Text(
                      "181500628 (H-53)",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),

                    Text(
                      "satyam.merothiya_cs18@gla.ac.in",
                      style: TextStyle(fontSize: 15, color: Colors.lightGreenAccent,fontWeight: FontWeight.bold),
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
