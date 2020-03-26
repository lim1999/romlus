import 'package:flutter/material.dart';
import 'package:romlus/src/pages/user/UserUpdatePage.dart';
import 'package:romlus/src/widgets/User/UserDashboardWidget.dart';

class UserDashboardPage extends StatefulWidget {
  UserDashboardPage({Key key}) : super(key: key);

  @override
  _UserDashboardPageState createState() => _UserDashboardPageState();
}

class _UserDashboardPageState extends State<UserDashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "គណនីខ្ញុំ",
        ),
        backgroundColor: Color(0xff153F59),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        height: double.infinity,
        child: ListView(
          children: <Widget>[
            UserDashboardWidget(
              ontaphandler: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => UserUpdatePage())
                );
              },
            )
          ],
        ),
      )
    );
  }
}