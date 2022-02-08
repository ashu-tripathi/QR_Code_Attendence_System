import 'package:flutter/material.dart';
import 'package:qr_code_attendence_system/notes_download.dart';
class NavBarStu extends StatelessWidget {
  const NavBarStu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Shashank Agrawal',
            ),
            accountEmail: Text(
              'shashank.agrawal_cs18@gla.ac.in',
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('images/shashank.jpg',
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
            title: Text('Check Notes'),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NotesDownload())),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Apply Leave'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Prediction on absent'),
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
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}
