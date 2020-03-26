import 'package:flutter/material.dart';
import 'package:romlus/src/pages/Borey/BoreyTransferPage.dart';


class BoreyDetailCardPayWidget extends StatelessWidget {
  const BoreyDetailCardPayWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Color(0xffFFF3CD),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Payment Date",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xff1F598C)
                      ),
                    ), 
                    Text(
                      "18/09/2019",
                      style: TextStyle(
                        fontSize: 16
                      ),
                    )
                  ],
                ),
                RaisedButton(
                  color: Color(0xff306B47),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                  child: Text(
                    "Pay Now",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => BoreyTransferPage())
                    );
                  },
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Principle",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xff1F598C)
                        ),
                      ), 
                      Text(
                        "100.00",
                        style: TextStyle(
                          fontSize: 16
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 80.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Interest",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xff1F598C)
                        ),
                      ), 
                      Text(
                        "9.00",
                        style: TextStyle(
                          fontSize: 16
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Penalty  ",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xff1F598C)
                        ),
                      ), 
                      Text(
                        "3.00",
                        style: TextStyle(
                          fontSize: 16
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 80.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Total Payment",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xff1F598C)
                        ),
                      ), 
                      Text(
                        "112.00",
                        style: TextStyle(
                          fontSize: 16
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
