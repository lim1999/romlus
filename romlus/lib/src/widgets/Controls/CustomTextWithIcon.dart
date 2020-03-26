import 'package:flutter/material.dart';

class CustomTextWithIcon extends StatelessWidget {
  final String labelText;
  final Color colorIcon, colorText;
  final IconData icons;
  final Function ontaphandler;
  const CustomTextWithIcon({Key key, this.labelText, this.icons, this.ontaphandler, this.colorIcon, this.colorText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.only(left: 15, right: 15),
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            decoration: BoxDecoration(
            border: Border(
            bottom: BorderSide(color: Color(0xff153F59), width: 0.5)
          )
        ),
        child: Row(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: Icon(
                icons,
                color: colorIcon
                ),
            ),
            Text(
                labelText,
                style: TextStyle(
                  color: colorText,
                  fontSize: 16
                ),
              ),
          ],
        ),
      ),
      onTap: ontaphandler,
      
    );
  }
}