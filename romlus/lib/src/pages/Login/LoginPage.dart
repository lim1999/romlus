import 'package:flutter/material.dart';
import 'package:romlus/src/pages/Login/RegisterPage.dart';
import 'package:romlus/src/widgets/controls/CustomTextLink.dart';
import 'package:romlus/src/widgets/login/LoginWidget.dart';

class LogInPage extends StatefulWidget {
  LogInPage({Key key}) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body:  Stack(
            children: <Widget>[
              Container(
                child: Image(
                  image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png'),
                  width: size.width,
                  fit: BoxFit.fill,
                ),
              ),
              ListView(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          width: size.width,
                          margin: EdgeInsets.only(left: 20, right: 20, top: 150),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Color(0xff153F59)),
                            color: Colors.white
                          ), 
                          child: LoginWidget(),
                        ),
                      ],
                    ),
                     Container(
                        height: 200,
                        alignment: Alignment.topCenter,
                        margin: const EdgeInsets.only(top:30),
                        child: CustomTextLink(
                          labelText: "មិនទាន់មានគណនី?",
                          ontaphandler: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context) => RegisterPage())
                            );
                          },
                        ),
                      )
                  ]
                )
            ],
          ),
    );
  }
}
