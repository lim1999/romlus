import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class CustomButtonDate extends StatefulWidget {
  CustomButtonDate({Key key}) : super(key: key);

  @override
  _CustomButtonDateState createState() => _CustomButtonDateState();
}

class _CustomButtonDateState extends State<CustomButtonDate> {
  DateTime _currentdate = new DateTime.now();
  String _showdate = "ថ្ងៃខែឆ្នាំកំណើត";
  Future<Null> _selectdate(BuildContext context) async{
    final DateTime _seldate = await showDatePicker(
      context: context, 
      initialDate: _currentdate, 
      firstDate: DateTime(1990), 
      lastDate: DateTime(2030)
    );
    if(_seldate != null){
      setState(() {
        _showdate = new DateFormat.yMMMd().format(_seldate);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1.0, color: Colors.black38))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '$_showdate',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xff153F59)
                  )
                ),
                Icon(
                  Icons.date_range,
                  color: Color(0xff153F59),
                )
              ],
            )
          ),
          onTap: () {
            _selectdate(context);
          },
        );
  }
}