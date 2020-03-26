import 'package:flutter/material.dart';

class ScheduleCardWidget extends StatefulWidget {
  ScheduleCardWidget({Key key}) : super(key: key);

  @override
  _ScheduleCardWidgetState createState() => _ScheduleCardWidgetState();
}

class _ScheduleCardWidgetState extends State<ScheduleCardWidget> {
  @override
  Widget build(BuildContext context) {
    bool check = false;
    return Container(
      width: double.infinity,
      height: 60.0,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.3),
            blurRadius: 20.0, // soften the shadow
            spreadRadius: 0.0, //extend the shadow
            offset: Offset(
              0.0, // Move to right 10  horizontally
              3.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Checkbox(
            value: check,
            onChanged: (bool value) {
              setState(() {
                check = !value;
              });
            },
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Payment Date",
                style: TextStyle(
                  color: Color(0xff1C358F),
                  fontSize: 16
                ),
              ),
              Text(
                "18/10/2019",
                style: TextStyle(
                  fontSize: 14
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Total Payment",
                style: TextStyle(
                  color: Color(0xff1C358F),
                  fontSize: 16
                ),
              ),
              Text(
                "112.00",
                style: TextStyle(
                  fontSize: 14
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}