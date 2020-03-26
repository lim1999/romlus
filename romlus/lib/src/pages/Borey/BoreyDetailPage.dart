import 'package:flutter/material.dart';
import 'package:romlus/src/pages/Borey/ScheduleDetailPage.dart';
import 'package:romlus/src/widgets/borey/BoreyDetailCardPayWidget.dart';
import 'package:romlus/src/widgets/borey/BoreyDetailCardProcess.dart';

class BoreyDetailPage extends StatefulWidget {
  BoreyDetailPage({Key key}) : super(key: key);

  @override
  _BoreyDetailPageState createState() => _BoreyDetailPageState();
}

class _BoreyDetailPageState extends State<BoreyDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Screen Payment"
        ),
        backgroundColor: Color(0xff153F59),
      ),
      body: Container(
        color: Color(0xff153F59),
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Container(
               margin: EdgeInsets.only(bottom: 10.0),
              child: BoreyDetailCardPayWidget(),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: BoreyDetailCardProcess(),
            ),
            Container(
              child: ScheduleDetailPage(),
            )
          ],
        ),
      ),
    );
  }
}