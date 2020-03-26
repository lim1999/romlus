import 'dart:async';

import 'package:flutter/material.dart';
import 'package:romlus/src/widgets/Controls/CustomButton.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ShopDetailWidget extends StatefulWidget {
  ShopDetailWidget({Key key}) : super(key: key);

  @override
  _ShopDetailWidgetState createState() => _ShopDetailWidgetState();
}

class _ShopDetailWidgetState extends State<ShopDetailWidget> {
  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center = const LatLng(45.521563, -122.677433);
  final Set<Marker> _markers = {};
  LatLng _lastMapPosition = _center;
  MapType _currentMapType = MapType.normal;
  _onMapCreated(GoogleMapController controller){
    _controller.complete(controller);
  }
  _onCameraMove(CameraPosition position){
    _lastMapPosition = position.target;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(5.0),
          height: 500,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                child: Container(
                      height: 140,
                      width: 100,
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
                          image: NetworkImage('https://tinypng.com/images/social/page-analyzer.jpg'),
                        ),
                      ),
                    ),
                onTap: () {
                  print("view image");
                },
              ),
              Container(
                margin: EdgeInsets.only(bottom: 5.0),
                child: Text(
                  ("Domrey Shop").toUpperCase(),
                  style: TextStyle(
                    color: Color(0xff153F59), fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 5.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: Color(0xff153F59),
                      size: 18.0
                    ),
                    Flexible(
                      child: Text(
                      "#Building 93, Str Norodom Blvd Corner Street 208, Boeng Reang / Doun penh / PHNOM PENH",
                      style: TextStyle(
                        fontSize: 16
                      ),
                      softWrap: true,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 5.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone_iphone,
                      color: Color(0xff153F59),
                      size: 18.0
                    ),
                    Flexible(
                      child: Text(
                      "086 9876543/097 976543245",
                      style: TextStyle(
                        fontSize: 16
                      ),
                      softWrap: true,
                      ),
                    ),
                  ],
                ),
              ),
                Container(
                  width: double.infinity,
                  height: 250,
                  child: Stack(
                    children: <Widget>[
                      GoogleMap(
                        onMapCreated: _onMapCreated,
                        initialCameraPosition: CameraPosition(
                          target: _center,
                          zoom: 11.0
                        ),
                        mapType: _currentMapType,
                        markers: _markers,
                        onCameraMove: _onCameraMove,
                      )
                    ],
                  ),
                )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
          child: CustomButton(
            labelText: "Go To Shop",
            colors: Colors.greenAccent,
            minWidth: double.infinity,
            onpressedhandler: () {
              print("go to shop");
            },
          ),
        )
      ],
    );
  }
}