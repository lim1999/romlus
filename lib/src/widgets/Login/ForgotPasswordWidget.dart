import 'package:flutter/material.dart';
import 'package:romlus/src/pages/Login/VerityCodePage.dart';
import 'package:romlus/src/widgets/Controls/CustomTextFieldBorderBottom.dart';
import 'package:romlus/src/widgets/controls/CustomButton.dart';

class ForgotPasswordWidget extends StatelessWidget {
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
              hintText: "ទូរស័ព្ទ",
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0,bottom: 20.0),
            child: CustomButton(
              labelText: "ស្នើសំុ",
              minWidth: double.infinity,
              colors: Color(0xff1F598C),
              onpressedhandler: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => VerityCodePage())
                );
              },
            ),
          ),
        ],
      ), 
    );
  }
}