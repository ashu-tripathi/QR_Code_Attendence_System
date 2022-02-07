import 'package:flutter/material.dart';
class ButtonWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget ({
    Key key,
     this.icon,
    this.text,
    this.onClicked(),
    }) : super(key: key);

  @override
  Widget build(BuildContext context) =>new  RaisedButton(
    color: Colors.teal,
    child:buildContent(),
    onPressed:onClicked,
  );

  Widget buildContent()=>Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(icon,size:20),
      SizedBox(width: 16),
      Text(text,
      style:TextStyle(fontSize: 20,color:Colors.white),),
    ],

  );
}
