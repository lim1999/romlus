import 'package:flutter/material.dart';
import 'package:romlus/src/widgets/borey/BoreyHorizontalCardWidget.dart';

class BoreyListAllPage extends StatefulWidget {
  BoreyListAllPage({Key key}) : super(key: key);

  @override
  _BoreyListAllPageState createState() => _BoreyListAllPageState();
}

class _BoreyListAllPageState extends State<BoreyListAllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment Schedule"
        ),
         actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.refresh
            ),
            onPressed: () {
              print("Refresh");
            },
          )
        ],
        backgroundColor: Color(0xff153F59),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Color(0xff153F59),
      body: Container(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: BoreyHorizontalCardWidget(),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: BoreyHorizontalCardWidget(),
            ),
          ],
        ),
      ),
    );
  }
}