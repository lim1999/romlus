import 'package:flutter/material.dart';
import 'package:romlus/src/pages/Product/ProductDetailPage.dart';
import 'package:romlus/src/widgets/Product/ProductCardWidget.dart';

class ProductDetailWidget extends StatelessWidget {
  const ProductDetailWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          child: Container(
            margin: EdgeInsets.only(bottom: 5.0),
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
                  color: Color(0xff0000004D),
                  border: Border.all(color: Color(0xff153F59)),
                  borderRadius: BorderRadius.circular(10.0)
            ),
            child: Image(
              image: NetworkImage('https://pngimage.net/wp-content/uploads/2018/06/gallery-vector-icon-png-4.png'),
            ),
          ),
          onTap: () {
            print("View Picture");
          },
        ),
        Container(
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
          ),
        )
      ],
    );
  }
}