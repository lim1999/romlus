import 'package:flutter/material.dart';
import 'package:romlus/src/pages/Borey/BoreyDetailPage.dart';

class BoreyHorizontalCardWidget extends StatelessWidget {
  const BoreyHorizontalCardWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
      height: 150,
      width: double.infinity,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.yellowAccent[100],
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
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Iphone X, 16G Black",
                  style: TextStyle(color: Color(0xff1F598C), fontSize: 18),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: 5.0, bottom: 5.0, right: 10.0, left: 10.0),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.red),
                      borderRadius: BorderRadius.circular(50.0)),
                  child: Text(
                    "Warning",
                    style: TextStyle(color: Colors.red, fontSize: 14),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "001-RV/PPI000002-00000001(USD)",
                  style: TextStyle(fontSize: 16),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: Color(0xffC7C7CC),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Dorey Meas Phone Shop",
              style: TextStyle(fontSize: 18, color: Color(0xff1F598C)),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10.0, left: 10.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.date_range),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Payment Date",
                            style: TextStyle(
                                color: Color(0xff153F59), fontSize: 16),
                          ),
                          Text("18/09/2019")
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0, left: 40.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.attach_money),
                    Container(
                      margin: EdgeInsets.only(left: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Total",
                            style: TextStyle(
                                color: Color(0xff153F59), fontSize: 16),
                          ),
                          Text("25.00")
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ),
    onTap: () {
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => BoreyDetailPage())
      );
    },
    );
  }
}
