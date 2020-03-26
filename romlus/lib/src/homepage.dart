import 'package:flutter/material.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:romlus/src/pages/Borey/BoreyListAllPage.dart';
import 'package:romlus/src/pages/Product/ProductListPage.dart';
import 'package:romlus/src/pages/Shop/ShopListPage.dart';
import 'package:romlus/src/pages/user/UserDashboardPage.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;
  final _pageOptions = [
    BoreyListAllPage(),
    ShopListPage(),
    ProductListPage(),
    UserDashboardPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_pageOptions[selectedIndex],
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Color(0xff0C2C40),
          selectedItemBorderColor: Color(0xff153F59),
          selectedItemBackgroundColor: Colors.white,
          selectedItemIconColor: Color(0xff153F59),
          selectedItemLabelColor: Colors.white,
        ),
        selectedIndex: selectedIndex,
        onSelectTab: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.calendar_today,
            label: 'បង់ប្រាក់',
          ),
          FFNavigationBarItem(
            iconData: Icons.shop,
            label: 'ហាង',
          ),
          FFNavigationBarItem(
            iconData: Icons.casino,
            label: 'ការផ្សព្វផ្សាយ',
          ),
          FFNavigationBarItem(
            iconData: Icons.account_circle,
            label: 'គណនី',
          ),
        ],
      ),
    );
  }
}