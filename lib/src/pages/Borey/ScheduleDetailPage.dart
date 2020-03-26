import 'package:flutter/material.dart';
import 'package:romlus/src/widgets/borey/ScheduleCardWidget.dart';


class ScheduleDetailPage extends StatefulWidget {
  ScheduleDetailPage({Key key}) : super(key: key);

  @override
  _ScheduleDetailPageState createState() => _ScheduleDetailPageState();
}

class _ScheduleDetailPageState extends State<ScheduleDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: ExpansionTile(
          title: Container(
            child: Text(
              "Schedule Payments",
              style: TextStyle(
                color: Color(0xff1F598C),
                fontSize: 18
              ),
            ),
          ),
          
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              child: ScheduleCardWidget(),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              child: ScheduleCardWidget(),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              child: ScheduleCardWidget(),
            )
          ],
        ),
      ),
    );
  }
}