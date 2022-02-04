import 'package:flutter/material.dart';
import 'package:hotelapp/pages/home_page.dart';
import 'package:hotelapp/pages/search_page.dart';

void main() => runApp(HotelApp());

class HotelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        '/search': (context) => SearchPage(),
      },
    );
  }
}
