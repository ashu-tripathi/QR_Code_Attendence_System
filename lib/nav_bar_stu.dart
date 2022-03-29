import 'package:flutter/material.dart';
import 'package:qr_code_attendence_system/attendance_page.dart';
import 'package:qr_code_attendence_system/notes_download.dart';
import 'package:qr_code_attendence_system/apply_leave.dart';
import 'package:qr_code_attendence_system/account_setting.dart';
import 'package:qr_code_attendence_system/contact_details.dart';
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
            leading: Icon(Icons.account_box),
            title: Text('Check Attendance'),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AttendancePage())),
          ),
          ListTile(
            leading: Icon(Icons.insert_drive_file),
            title: Text('Check Notes'),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NotesDownload())),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.arrow_drop_down_circle),
            title: Text('Apply Leave'),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ApplyLeave())),
          ),
          // ListTile(
          //   leading: Icon(Icons.assessment),
          //   title: Text('Prediction on absent'),
          //   onTap: () => null,
          // ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Account Settings'),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AccountSetting())),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('To Contact'),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ContactDetails())),
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
