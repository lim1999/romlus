import 'package:flutter/material.dart';
import 'package:romlus/src/widgets/login/ForgotPasswordWidget.dart';

class ForgotPasswordPage extends StatefulWidget {
  ForgotPasswordPage({Key key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text("Forgot Password"),
          backgroundColor: Color(0xff153F59),
        ),
        body:  Stack(
            children: <Widget>[
              Container(
                child: Image.asset('images/Logo/logo.png',
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
                          child: ForgotPasswordWidget(),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50.0,)
            ],
          ),
    );
  }
}