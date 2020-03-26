import 'package:flutter/material.dart';
import 'package:romlus/src/widgets/Controls/CustomButton.dart';
import 'package:romlus/src/widgets/controls/CustomTextFieldBorderBottom.dart';
import 'package:romlus/src/widgets/controls/CustomTextPassword.dart';

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({Key key}) : super(key: key);

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
              hintText: "ឈ្មោះអ្នកប្រើប្រាស់",
            ),
          ),
          Container(
            child: CustomTextFieldBorderBottom(
              hintText: "លេខទូរស័ព្ទ",
            ),
          ),
          Container(
            child: CustTextPassword(
              hintText: "លេខសង្ងាត់",
            ),
          ),
          Container(
            child: CustTextPassword(
              hintText: "បញ្ជាក់លេខសម្ងាត់ម្តងទៀត",
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 20),
            child: CustomButton(
              labelText: "បង្កើត",
              minWidth: double.infinity,
              colors: Color(0xff153F59),
              onpressedhandler: () {
                print("Create");
              },
            ),
          ),
        ],
      ),
    );
  }
}
