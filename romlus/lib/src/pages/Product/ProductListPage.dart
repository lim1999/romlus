import 'package:flutter/material.dart';
import 'package:romlus/src/pages/Product/ProductDetailPage.dart';
import 'package:romlus/src/widgets/Product/ProductCardWidget.dart';

class ProductListPage extends StatefulWidget {
  ProductListPage({Key key}) : super(key: key);

  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Color(0xff153F59),
        child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'images/Promotion/promotion_background.png',
                ),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50.0), bottomLeft: Radius.circular(50.0))
            ),
          ),
          Container(
            child: Positioned.fill(
              top: 150,
              child: ListView(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top:5.0, left: 10.0, right: 10.0),
                      child: ProductCardWidget(
                        url: 'https://tinypng.com/images/social/page-analyzer.jpg',
                        name: 'Domrey Shop',
                        home: 'Z1 app loan',
                        phone: '087 3456782',
                        icons: Icons.arrow_forward_ios,
                        ontaphandler: (){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => ProductDetailPage())
                          );
                        },
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top:5.0, left: 10.0, right: 10.0),
                      child: ProductCardWidget(
                        url: 'https://tinypng.com/images/social/page-analyzer.jpg',
                        name: 'Domrey Shop',
                        home: 'Z1 app loan',
                        phone: '087 3456782',
                        icons: Icons.arrow_forward_ios,
                        ontaphandler: (){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => ProductDetailPage())
                          );
                        },
                      )
                    ),
                ],
              )
            ),
          )
        ],
      ),
      )
    );
  }
}