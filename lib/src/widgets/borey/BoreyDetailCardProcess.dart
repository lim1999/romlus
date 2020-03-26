import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class BoreyDetailCardProcess extends StatelessWidget {
  const BoreyDetailCardProcess({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = new Map();
    dataMap.putIfAbsent("Flutter", () => 5);
    return Container(
      height: 170,
      width: double.infinity,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "ID",
                  style:  TextStyle(
                    fontSize: 18,
                    color: Color(0xff1F598C)
                  ),
                ),
                Text(
                  "001-RV/PPI000002-00000001(USD)",
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
                 Text(
                  "Domrey Meas Phone Shop",
                  style:  TextStyle(
                    fontSize: 18,
                    color: Color(0xff1F598C)
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 120,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Item",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff153F59)
                            ),
                          ),
                          Text(
                            "Iphone X",
                            style: TextStyle(
                              fontSize: 16
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Amount",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff153F59)
                            ),
                          ),
                          Text(
                            "1,700.00",
                            style: TextStyle(
                              fontSize: 16
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 120,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Duration",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff153F59)
                            ),
                          ),
                          Text(
                            "12 Months",
                            style: TextStyle(
                              fontSize: 16
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Amount Paid",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff153F59)
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
                )
              ],
            ),
          ),
          Container(
            width: 80,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Process",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff1F598C)
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: PieChart(
                    dataMap: dataMap,
                    chartType: ChartType.ring,
                    showChartValuesOutside: true,
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