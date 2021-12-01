import 'package:flutter/material.dart';

class NavBarFac extends StatelessWidget {
  const NavBarFac({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Asheesh Tiwari',
            ),
            accountEmail: Text(
              'asheesh@gla.ac.in',
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('images/asheesh_tiwari_sir.jpg',
                    width: 90, height: 90, fit: BoxFit.cover),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage(
                  'images/app-background.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),



          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Check Attendence'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Mark Youself Present'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Modify Attendence'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Upload Notes'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Apply Leave'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Prediction on Absent'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Account Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('To Contact'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
