import 'package:flutter/material.dart';
import 'package:romlus/src/pages/Login/LoginPage.dart';
import 'package:romlus/src/pages/user/UserChangePasswordPage.dart';
import 'package:romlus/src/widgets/Controls/CustomTextWithIcon.dart';

class UserDashboardWidget extends StatelessWidget {
  final String name;
  final String phone;
  final Function ontaphandler;
  const UserDashboardWidget(
      {Key key,
      this.name = "orn chhai lim",
      this.phone = '086466584',
      this.ontaphandler,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250.0,
                decoration: BoxDecoration(color: Color(0xff0000004D)),
                child: Image.asset('images/Tools/no-photo-available.png')
              ),
              Container(
                padding: const EdgeInsets.all(7.0),
                width: double.infinity,
                decoration: BoxDecoration(color: Color(0xff153F59)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          name.toUpperCase(),
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          phone,
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        )
                      ],
                    ),
                    Icon(
                      Icons.edit,
                      size: 20,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),
          onTap: ontaphandler,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          decoration: BoxDecoration(
              border: Border(
              bottom: BorderSide(color: Color(0xff153F59), width: 0.5)
            )
          ),
          child:Row(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.calendar_today,
                  size: 20,
                  color: Color(0xff000000),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "ថ្ងៃខែឆ្នាំកំណើត",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff000000),
                    ),
                  ),
                  Text(
                    "29 January 1998",
                    style: TextStyle(fontSize: 14, color: Color(0xff000000)),
                  )
                ],
              ),
            ],
          ),
        ),
        CustomTextWithIcon(
          icons: Icons.settings,
          colorIcon: Color(0xff153F59),
          colorText: Color(0xff153F59),
          labelText: "ប្តូរលេខសម្ងាត់",
          ontaphandler: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => UserChangePasswordPage())
            );
          },
        ),
        CustomTextWithIcon(
          icons: Icons.exit_to_app,
          colorIcon: Color(0xff153F59),
          colorText: Color(0xff153F59),
          labelText: "ចាក់ចេញ",
          ontaphandler: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => LogInPage())
            );
          },
        ),
      ],
    );
  }
}
