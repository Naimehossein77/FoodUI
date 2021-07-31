import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodui/screens/Cart.dart';
import 'package:foodui/screens/home.dart';
import 'package:foodui/widgets/CustomText.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final pages = [Home(), Cart(), Home(), Home(), Home()];
  int _page = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food_UI',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: HexColor('#f25b01'),
      ),
      home: Scaffold(
        body: SafeArea(child: pages[_page]),
        bottomNavigationBar: CurvedNavigationBar(
          height: 50,
          index: 2,
          color: Colors.white,
          backgroundColor: HexColor('#F25B01'),
          buttonBackgroundColor: Colors.grey[100],
          // animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          items: [
            Icon(
              Icons.list_alt,
            ),
            Icon(Icons.shopping_cart_outlined),
            Icon(Icons.home_outlined),
            Icon(Icons.access_alarm),
            Icon(FontAwesomeIcons.user)
          ],
        ),
      ),
    );
  }
}
