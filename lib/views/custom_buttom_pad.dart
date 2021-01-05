import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Esse Widget será responsavel por criar os butoes que será
/// ultilizado na page

class CustomButtomPad extends StatefulWidget {

  String buttomText;

  CustomButtomPad(this.buttomText);

  @override
  _CustomButtomPadState createState() => _CustomButtomPadState();
}

class _CustomButtomPadState extends State<CustomButtomPad> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.blue.shade50,
        child: OutlineButton(
          onPressed: null,
          padding: EdgeInsets.all(24.0),
          child: Text(widget.buttomText,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            style: BorderStyle.solid,
            width: 1,
          ),
        ),
      ),
    );
  }
}
