import 'package:flutter/material.dart';
import 'package:romlus/src/widgets/Product/ProductDetailWidget.dart';

class ProductDetailPage extends StatefulWidget {
  ProductDetailPage({Key key}) : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Screen'
        ),
        backgroundColor: Color(0xff153F59),
      ),
      body: Container(
        padding: EdgeInsets.only(right: 10.0, top: 10, left: 10.0),
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: <Widget>[
            ProductDetailWidget()
          ],
        ),
      ),
    );
  }
}