import 'package:flutter/material.dart';
import 'package:romlus/src/widgets/borey/BoreyTransferCard.dart';

class BoreyTransferPage extends StatefulWidget {
  BoreyTransferPage({Key key}) : super(key: key);

  @override
  _BoreyTransferPageState createState() => _BoreyTransferPageState();
}

class _BoreyTransferPageState extends State<BoreyTransferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff153F59),
      appBar: AppBar(
        title: Text(
          "Transfer By"
        ),
        backgroundColor: Color(0xff1F598C),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
            child: BoreyTransferCard(),
          )
        ],
      ),
    );
  }
}