import 'package:flutter/material.dart';
import 'package:romlus/src/widgets/Controls/CustomButton.dart';
import 'package:romlus/src/widgets/Controls/CustomTextFieldBorderBottom.dart';

class UserChangePasswordWidget extends StatelessWidget {
  const UserChangePasswordWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomTextFieldBorderBottom(
          hintText: "លេខសម្ងាត់ចាស់",
        ),
        CustomTextFieldBorderBottom(
          hintText: "លេខសម្ងាត់ថ្មី",
        ),
        CustomTextFieldBorderBottom(
          hintText: "លេខសម្ងាត់ថ្មីម្តងទៀត",
        ),
        Container(
          margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: CustomButton(
            labelText: "រក្សាទុក",
            minWidth: double.infinity,
            colors: Color(0xff153F59),
            onpressedhandler: () {

            }, 
          ),
        )
      ],
    );
  }
}