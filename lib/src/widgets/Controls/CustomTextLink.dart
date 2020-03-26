import 'package:flutter/material.dart';

class CustomTextLink extends StatelessWidget {
  final String labelText;
  final Function ontaphandler;
  const CustomTextLink({Key key, this.labelText, this.ontaphandler}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontaphandler,
      child: Text(
        labelText,
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xff153F59)
        )
      ),
    );
  }
}
