import 'package:flutter/material.dart';
import 'package:qr_code_attendence_system/account_setting.dart';
import 'package:qr_code_attendence_system/apply_leave.dart';

import 'package:qr_code_attendence_system/notes_upload.dart';
import 'package:qr_code_attendence_system/modify_attendance.dart';

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

          // ListTile(
          //   leading: Icon(Icons.notifications),
          //   title: Text('Check Attendence'),
          //   onTap: () => null,
          // ),
          // ListTile(
          //   leading: Icon(Icons.notifications),
          //   title: Text('Mark Youself Present'),
          //   onTap: () => null,
          // ),
          Divider(),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text('Modify Attendance'),
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ModifyAttendance())),
          ),
          ListTile(
              leading: Icon(Icons.insert_drive_file),
              title: Text('Upload Notes'),
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NotesUpload()))),
          Divider(),
          ListTile(
            leading: Icon(Icons.arrow_drop_down_circle),
            title: Text('Apply Leave'),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ApplyLeave())),
          ),
          // ListTile(
          //   leading: Icon(Icons.notifications),
          //   title: Text('Prediction on Absent'),
          //   onTap: () => null,
          // ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Account Settings'),
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => AccountSetting())),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('To Contact'),
            onTap: () => Navigator.of(context).pop(),
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
