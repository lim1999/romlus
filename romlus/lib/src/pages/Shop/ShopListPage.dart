import 'package:flutter/material.dart';
import 'package:romlus/src/pages/Shop/AddNewShopPage.dart';
import 'package:romlus/src/pages/Shop/ShopDetailPage.dart';
import 'package:romlus/src/widgets/Shop/ShopCardWidget.dart';


class ShopListPage extends StatefulWidget {
  ShopListPage({Key key}) : super(key: key);

  @override
  _ShopListPageState createState() => _ShopListPageState();
}

class _ShopListPageState extends State<ShopListPage> {
  // var shoplist =  [
  //   {
  //     'url': 'image', 
  //     'name': 'name',
  //     'address':'adress',
  //     'phone':'phone',
  //     'concetion': 'concetion' 
  //   },
  //   {}
  // ];

  // void showList () {
  //   shoplist.forEach((v) => print('${v}'));
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shop List"
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add
            ),
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => AddNewShopPage())
              );
            },
          )
        ],
        backgroundColor: Color(0xff153F59),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Color(0xff153F59)
        ),
        child: ListView(
          children: <Widget>[
            ShopCardWidget(
              url: 'https://tinypng.com/images/social/page-analyzer.jpg',
              name: 'Domrey Shop',
              address: '#Building 93, Str Norodom Blvd Corner Street 208, Boeng Reang / Doun penh / PHNOM PENH',
              phone: '087 3456782',
              connction: 'concetion',
              icons: Icons.arrow_forward_ios,
              ontaphandler: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => ShopDetailPage())
                );
              },
            ),
            ShopCardWidget(
              url: 'https://tinypng.com/images/social/page-analyzer.jpg',
              name: 'Domrey Shop',
              address: '#Building 93, Str Norodom Blvd Corner Street 208, Boeng Reang / Doun penh / PHNOM PENH',
              phone: '087 3456782',
              connction: 'concetion',
              icons: Icons.arrow_forward_ios,
              ontaphandler: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => ShopDetailPage())
                );
              },
            ),
            ShopCardWidget(
              url: 'https://tinypng.com/images/social/page-analyzer.jpg',
              name: 'Domrey Shop',
              address: '#Building 93, Str Norodom Blvd Corner Street 208, Boeng Reang / Doun penh / PHNOM PENH',
              phone: '087 3456782',
              connction: 'concetion',
              icons: Icons.arrow_forward_ios,
              ontaphandler: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => ShopDetailPage())
                );
              },
            ),
            ShopCardWidget(
              url: 'https://tinypng.com/images/social/page-analyzer.jpg',
              name: 'Domrey Shop',
              address: '#Building 93, Str Norodom Blvd Corner Street 208, Boeng Reang / Doun penh / PHNOM PENH',
              phone: '087 3456782',
              connction: 'concetion',
              icons: Icons.arrow_forward_ios,
              ontaphandler: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => ShopDetailPage())
                );
              },
            ),
            ShopCardWidget(
              url: 'https://tinypng.com/images/social/page-analyzer.jpg',
              name: 'Domrey Shop',
              address: '#Building 93, Str Norodom Blvd Corner Street 208, Boeng Reang / Doun penh / PHNOM PENH',
              phone: '087 3456782',
              connction: 'concetion',
              icons: Icons.arrow_forward_ios,
              ontaphandler: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => ShopDetailPage())
                );
              },
            ),
            SizedBox(height: 50.0)
          ],  
        ),
      ),
    );
  }
}