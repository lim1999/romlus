import 'package:flutter/material.dart';
import 'package:romlus/src/widgets/Controls/CustomButton.dart';
import 'package:romlus/src/widgets/Controls/CustomTextFieldBorderBottom.dart';

class VerityCodeWidget extends StatelessWidget {
  final Function onpressedhandler;
  VerityCodeWidget({Key key, this.onpressedhandler}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 50),
            height: 100,
            width: 100,
            child: 
                 Image.asset('images/Logo/logo.png')
          ),
          Container(
            child: CustomTextFieldBorderBottom(
              hintText: "លេខកូដផ្ទៀងផ្ទាត់",
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0,bottom: 20.0),
            child: CustomButton(
              labelText: "បន្ត",
              minWidth: double.infinity,
              colors: Color(0xff1F598C),
              onpressedhandler: onpressedhandler,
            ),
          ),
        ],
      ), 
    );
  }
}