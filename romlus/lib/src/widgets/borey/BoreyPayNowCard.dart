import 'package:flutter/material.dart';

class BoreyPayNowCard extends StatelessWidget {
  final double amount;
  const BoreyPayNowCard({Key key, this.amount=112.00}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1, color: Colors.black12),
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
            width: double.infinity,
            padding: EdgeInsets.only(bottom: 10.0),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Color(0xff153F59), width: 1))
            ),
            child: Text(
              "Transfer Information",
              style: TextStyle(
                color: Color(0xff153F59),
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.account_circle,
                  size: 30,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Reciver Account",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff153F59)
                        ),
                      ),
                      Text(
                        "0000265489",
                        style: TextStyle(
                          fontSize: 16
                        ),
                      ),
                    ],
                  ),
                ),
                 Icon(
                  Icons.attach_money,
                  size: 30,
                ),
                Container(
                  child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Amount",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff153F59)
                        ),
                      ),
                      Text(
                        "\$$amount",
                        style: TextStyle(
                          fontSize: 16
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}