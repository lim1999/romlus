import 'package:flutter/material.dart';

class CustomTextFieldBorderBottom extends StatelessWidget {
  final String hintText;
  const CustomTextFieldBorderBottom({Key key, this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
        Container(
          child: TextField(
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