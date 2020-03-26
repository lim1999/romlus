import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:romlus/src/widgets/Shop/ShopCardWidget.dart';


class AddNewShopPage extends StatefulWidget {
  AddNewShopPage({Key key}) : super(key: key);

  @override
  _AddNewShopPageState createState() => _AddNewShopPageState();
}

class _AddNewShopPageState extends State<AddNewShopPage> {
  String barcode = "";
  Future scan() async{
     barcode = await BarcodeScanner.scan();
    setState(() => this.barcode = barcode);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add New Shop"
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.crop_free
            ),
             onPressed: ()  {
              scan();
            },
          )
        ],
        backgroundColor: Color(0xff153F59),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 10.0, left: 10.0, top: 10.0),
            child: TextField(
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.blueAccent,
            ),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                hintText: "search shop",
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
                    borderRadius: BorderRadius.circular(10.0)),
                )),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: ShopCardWidget(
              url: 'https://tinypng.com/images/social/page-analyzer.jpg',
              name: 'Domrey Shop',
              address: 'Phnom penh',
              phone: '087 3456782',
              connction: 'concetion',
              icons: Icons.check,
              ontaphandler: (){
                print("Screen detail");
              },
            ),
          )
        ],
      ),
    );
  }
}
