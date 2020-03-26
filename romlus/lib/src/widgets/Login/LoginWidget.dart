import 'package:flutter/material.dart';
import 'package:romlus/src/homepage.dart';
import 'package:romlus/src/pages/Login/ForgotPasswordPage.dart';
import 'package:romlus/src/widgets/Controls/CustomButton.dart';
import 'package:romlus/src/widgets/controls/CustomTextFieldBorderBottom.dart';
import 'package:romlus/src/widgets/controls/CustomTextLink.dart';
import 'package:romlus/src/widgets/controls/CustomTextPassword.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key key}) : super(key: key);

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
            CustomTextFieldBorderBottom(
              hintText: "លេខទូរស័ព្ទ",
            ),
            CustTextPassword(
              hintText: "លេខសម្ងាត់",
            ),

          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(top: 20,right: 20, bottom: 20),
              child: CustomTextLink(
              labelText: "ភ្លេចលេខសំងាត់?",
              ontaphandler: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPasswordPage())  
                );
              },
            ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, bottom: 20),
            child: CustomButton(
              labelText: "ចូល",
              minWidth: double.infinity,
              colors: Color(0xff153F59),
              onpressedhandler: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder:  (context) => Homepage())
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
