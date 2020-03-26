import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:romlus/src/pages/Borey/BoreyDetailPage.dart';
import 'package:romlus/src/widgets/Controls/CustomButton.dart';
import 'package:romlus/src/widgets/borey/BoreyPayNowCard.dart';


class BoreyPayNowPage extends StatefulWidget {
  BoreyPayNowPage({Key key}) : super(key: key);

  @override
  _BoreyPayNowPageState createState() => _BoreyPayNowPageState();
}

class _BoreyPayNowPageState extends State<BoreyPayNowPage> {
   File imageFile;
  _openCamera(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      imageFile = picture;
    });
  }
  Widget _decideImageView () {
    if(imageFile == null){
      return Text(
        ""
      );
    }else{
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Stack(
              children: <Widget>[
                Image.file(imageFile, width: 150, height: 150),
                Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: InkWell(
                    child: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onTap: (){
                      setState(() {
                        imageFile = null;
                      });
                    },
                  ),
                )
              ],
            )
          ),
           CustomButton(
            labelText: "Done",
            colors: Color(0xff306B47),
            minWidth: double.infinity,
            onpressedhandler: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => BoreyDetailPage())
              );
            },
          )
         
        ],
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    double pay = 112.00;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pay Now (\$$pay)"
        ),
        backgroundColor: Color(0xff005E86),
      ),
      backgroundColor: Color(0xff153F59),
      body: Container(
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xff005E86),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(50.0), bottomLeft: Radius.circular(50.0))
              ),
            ),
            Container(
              child: Positioned.fill(
                top: 10,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                        child: Image.asset('images/1.jpg'),
                      ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      child: BoreyPayNowCard(),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.0, right: 20.0),
                        width: double.infinity,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Color(0xff1F598C),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      child: InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              
                              child: Icon(
                                Icons.camera_enhance,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Take Invoice Picture",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                        onTap: (){
                          _openCamera(context);
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20.0),
                      child: _decideImageView(),
                    )
                  ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}