import 'package:flutter/material.dart';

class ShopCardWidget extends StatelessWidget {
  final String url;
  final String name;
  final String address;
  final String phone;
  final String connction;
  final Function ontaphandler;
  final IconData icons;
  const ShopCardWidget({
    Key key,
    this.url,
    this.name,
    this.address,
    this.phone,
    this.connction,
    this.ontaphandler,
    this.icons
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 100,
        decoration: BoxDecoration(
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
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 90,
                      margin: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.3),
                          blurRadius: 20.0, // soften the shadow
                          spreadRadius: 0.0, //extend the shadow
                          offset: Offset(
                            0.0, // Move to right 10  horizontally
                            3.0, // Move to bottom 10 Vertically
                          ),
                        ),
                      ]),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Image(
                          width: double.infinity,
                          height: double.infinity,
                          image: NetworkImage(url),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 7.0, bottom: 7.0, right: 5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            name,
                            style: TextStyle(
                                color: Color(0xff153F59), fontSize: 16),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  color: Color(0xff153F59),
                                  size: 16.0,
                                ),
                                Container(
                                  width: 200,
                                    child: Text(
                                      address,
                                      style: TextStyle(
                                          fontSize: 14, color: Color(0xff000000)
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    )
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.phone_iphone,
                                color: Color(0xff153F59),
                                size: 18.0,
                              ),
                              Text(
                                phone,
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff000000)),
                              )
                            ],
                          ),
                          Text(
                            connction,
                            style: TextStyle(
                                color: Color(0xff153F59), fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Icon(
                  icons,
                  color: Color(0xff153F59),
                  size: 20.0,
                ),
              )
            ],
          ),
        ),
      ),
      onTap: ontaphandler,
    );
  }
}
