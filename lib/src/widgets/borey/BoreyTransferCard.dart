import 'package:flutter/material.dart';
import 'package:romlus/src/pages/Borey/BoreyPayNowPage.dart';

class BoreyTransferCard extends StatelessWidget {
  const BoreyTransferCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.infinity,
      padding: EdgeInsets.all(5.0),
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
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 30.0),
                  decoration: BoxDecoration(
                    border: Border(right: BorderSide(color: Colors.black26, width: 1))
                  ),
                  child: Image(
                    image: NetworkImage('https://media-exp1.licdn.com/dms/image/C510BAQEnYW7qoK68EQ/company-logo_200_200/0?e=2159024400&v=beta&t=rxUBXSam0tckUhBeWRVC44U6PpSqW0l1igmEmT5iBRQ'),
                  ),
                ),
                Container(
                  
                  child: Text(
                    "ABA Bank",
                    style: TextStyle(
                      color: Color(0xff005E86),
                      fontSize: 18
                    ),
                  ),
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 18,
              color: Color(0xffC7C7CC),
            )
          ],
        ),
        onTap: () {
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => BoreyPayNowPage())
          );
        },
      ),
    );
  }
}