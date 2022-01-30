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
      // appBar: PreferredSize(
      //   preferredSize: Size(double.infinity, 125),
      //   child: AppBar(
      //     backgroundColor: Color(0xff5589F0),
      //     elevation: 0,
      //     title: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Image.asset(
      //           'assets/nav1.png',
      //           width: 26,
      //         ),
      //         Text(
      //           'Discover',
      //           style: GoogleFonts.poppins(
      //             fontSize: 20,
      //             fontWeight: FontWeight.w600,
      //           ),
      //         ),
      //         Image.asset(
      //           'assets/notification.png',
      //           width: 26,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    height: 125,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff5589F0),
                    ),
                    child: Row(
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
                            color: Colors.white,
                          ),
                        ),
                        Image.asset(
                          'assets/notification.png',
                          width: 26,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                margin: EdgeInsets.only(top: 90, left: 24, right: 24),
                height: 80,
                width: MediaQuery.of(context).size.width - (2 * 24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your Balance',
                          style: GoogleFonts.poppins(
                            color: Color(0xffB7B7B7),
                          ),
                        ),
                        Text(
                          'IDR 9.200.301',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff4E82EA),
                          ),
                        )
                      ],
                    ),
                    Image.asset(
                      'assets/plus.png',
                      width: 24,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text('Recommended Hotels'),
                  Text('View all'),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
