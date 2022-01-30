import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Color(0xff4E82EA),
        unselectedItemColor: Color(0xffD8D8D8),
        backgroundColor: Color(0xfFFFFF),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/home_nav.png',
              width: 24,
            ),
            label: 'home',
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
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 125),
        child: AppBar(
          backgroundColor: Color(0xff5589F0),
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/nav1.png',
                width: 26,
              ),
              Text(
                'Discover',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Image.asset(
                'assets/notification.png',
                width: 26,
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
      ),
    );
  }
}
