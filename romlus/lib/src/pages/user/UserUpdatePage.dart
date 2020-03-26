import 'package:flutter/material.dart';
import 'package:romlus/src/widgets/User/UserUpdateWidget.dart';

class UserUpdatePage extends StatefulWidget {
  UserUpdatePage({Key key}) : super(key: key);

  @override
  _UserUpdatePageState createState() => _UserUpdatePageState();
}

class _UserUpdatePageState extends State<UserUpdatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Information"
        ),
        backgroundColor: Color(0xff153F59),
      ),
      body: Container(
        height: double.infinity,
        child: ListView(
          children: <Widget>[
            UserUpdateWidget(
            ),
            SizedBox(height: 50.0,)
          ],
        ),
      ),
    );
  }
}