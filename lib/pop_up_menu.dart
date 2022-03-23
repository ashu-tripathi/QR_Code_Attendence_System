import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:qr_code_attendence_system/helperfunction.dart';
import 'package:qr_code_attendence_system/app_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qr_code_attendence_system/choice.dart';

class ContactPopupMenu extends StatefulWidget {
  const ContactPopupMenu({
    Key key,
    @required this.choices,
  }) : super(key: key);

  final List<Choice> choices;

  @override
  _ContactPopupMenuState createState() => _ContactPopupMenuState();
}

class _ContactPopupMenuState extends State<ContactPopupMenu> {
  // String _selectedChoice = choices[0].title;
  String _selectedChoice;

  Future<void> _signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      HelperFunctions.saveUserLoggedInSharedPreference(false);
      Navigator.pushNamed(context,'/MainScreen');
    } catch (e) {
      print(e);
    }
  }
  void _showDialog(){
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Are you sure?'),
        content: Text('Do you want to Log out.'),
        actions: <Widget>[
          FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text('No'),
          ),
          FlatButton(
            onPressed: () => _signOut(),
            /*Navigator.of(context).pop(true)*/
            child: Text('Yes'),
          ),
        ],
      ),
    );
  }

  void _select(Choice choice) {
    setState(() {
      _selectedChoice = choice.title;
      if (_selectedChoice == 'Log out') {
        _showDialog();
        print('Log Out');
      }
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Choice>(

      itemBuilder: (BuildContext context) {
        return widget.choices.map((Choice choice) {
          return PopupMenuItem<Choice>(
            value: choice,
            child: Row(
              children: <Widget>[
                AppIcons(
                  iconName: choice.icon,
                  iconSize:20.0,
                  colour: Colors.black,
                ),
                Container(
                  width: 10.0,
                ),
                Text(
                  choice.title,
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          );
        }).toList();
      },
      onSelected: _select,
      icon: Icon(
        FontAwesomeIcons.ellipsisV,
        color: Colors.white,
      ),
    );
  }
}
