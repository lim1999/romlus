import 'package:flutter/material.dart';
import 'package:romlus/src/widgets/Login/VerityCodeWidget.dart';

class VerityCodePage extends StatefulWidget {
  VerityCodePage({Key key}) : super(key: key);

  @override
  _VerityCodePageState createState() => _VerityCodePageState();
}

class _VerityCodePageState extends State<VerityCodePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text("Verify Password"),
          backgroundColor: Color(0xff153F59),
        ),
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
                          margin: EdgeInsets.only(left: 20, right: 20, top: 100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "បញ្ជាក់ : ",
                                      style: TextStyle(
                                        color: Colors.red
                                      ),
                                    ),
                                    Container(
                                      width: 300,
                                      child: Text(
                                        "សូមបញ្ចូលលេខកូដដែលបានផ្ញើទៅកាន់លេខទូរស័ព្ទ 086 xxxxxxxx​ ដែលផ្តើមដោយ 33xxxx",
                                         softWrap: true,
                                         style: TextStyle(
                                           color: Colors.white
                                         ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: size.width,
                                margin: EdgeInsets.only(top: 50),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(color: Color(0xff153F59)),
                                  color: Colors.white
                                ), 
                                child: VerityCodeWidget(
                                  onpressedhandler: () {
                                    print("verify");
                                  },
                                ),
                              ),
                            ],
                          ),
                        )
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