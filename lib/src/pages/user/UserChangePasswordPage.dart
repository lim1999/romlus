import 'package:flutter/material.dart';
import 'package:romlus/src/widgets/User/UserChangePasswordWidget.dart';

class UserChangePasswordPage extends StatefulWidget {
  UserChangePasswordPage({Key key}) : super(key: key);

  @override
  _UserChangePasswordPageState createState() => _UserChangePasswordPageState();
}

class _UserChangePasswordPageState extends State<UserChangePasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text(
           "ប្តូរលេខសម្ងាត់"
         ),
         backgroundColor: Color(0xff153F59),
       ),
       body: Container(
         padding: EdgeInsets.all(20.0),
         height: double.infinity,
         child: ListView(
           children: <Widget>[
             UserChangePasswordWidget()
           ],
         ),
       ),
    );
  }
}