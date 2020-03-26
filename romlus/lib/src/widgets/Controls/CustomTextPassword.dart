import 'package:flutter/material.dart';

class CustTextPassword extends StatelessWidget {
  final String hintText;
  const CustTextPassword({Key key, this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
        Container(
          child: TextField(
              obscureText: true,
              style: TextStyle(
                fontSize: 18.0
              ),
              decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 18.0,
                color: Color(0xff153F59)
              ),
            ),
          ),
    );
  }
}