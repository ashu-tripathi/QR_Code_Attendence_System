import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key key,
    this.icon,
    this.text,
    this.onClicked(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => new RaisedButton(
    elevation: 5.0,

    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
    ),
        color: Colors.green,
        child: buildContent(),
        onPressed: onClicked,
      );

  Widget buildContent() => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 25),
          SizedBox(width: 20),
          Text(
            text,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ],
      );
}
