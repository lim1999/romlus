import 'package:flutter/material.dart';
import 'package:romlus/src/widgets/Shop/ShopDetailWidget.dart';

class ShopDetailPage extends StatefulWidget {
  ShopDetailPage({Key key}) : super(key: key);

  @override
  _ShopDetailPageState createState() => _ShopDetailPageState();
}

class _ShopDetailPageState extends State<ShopDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Screen",
        ),
        backgroundColor: Color(0xff153F59),
      ),
      body: Container(
        decoration: BoxDecoration(color: Color(0xff153F59)),
          child: 
            ShopDetailWidget(),
      )
    );
  }
}