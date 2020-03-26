import 'package:flutter/material.dart';
import 'package:romlus/src/pages/Login/LoginPage.dart';
import 'package:romlus/src/widgets/controls/CustomTextLink.dart';
import 'package:romlus/src/widgets/login/RegisterWidget.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                          child: RegisterWidget(),
                        ),
                      ],
                    ),
                     Container(
                        height: 200,
                        margin: const EdgeInsets.only(top:30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            CustomTextLink(
                              labelText: "មានគណនីរួចហើយ?",
                              ontaphandler: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => LogInPage())
                                );
                              },
                            )
                          ],
                        )
                      ),
                  ],
                )
            ],
          ),
    );
  }
}