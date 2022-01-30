import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/home_nav.png',
              width: 24,
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/search_nav.png',
              width: 24,
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/order_nav.png',
              width: 24,
            ),
            label: 'order',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/profile_nav.png',
              width: 24,
            ),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
