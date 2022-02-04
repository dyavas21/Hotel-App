import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelapp/widget/recommended_hotel.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: GoogleFonts.poppins(),
        selectedLabelStyle: GoogleFonts.poppins(),
        currentIndex: 0,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Color(0xff4E82EA),
        unselectedItemColor: Color(0xffD8D8D8),
        backgroundColor: Color(0xfFFFFF),
        onTap: (value) {
          if (value == 1) {
            Navigator.pushNamed(context, '/search');
          }
        },
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
          Column(
            children: [
              Discover(),
              Balance(),
              Recommended(),
              Slider(),
              NewHotel(),
              NewHotelCard(),
            ],
          )
        ],
      ),
    );
  }

  Widget Discover() {
    return Container(
      padding: EdgeInsets.only(top: 24, left: 24, right: 24),
      width: double.infinity,
      height: 65,
      decoration: BoxDecoration(
        color: Color(0xff5589F0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/nav1.png',
            width: 24,
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
            width: 24,
          ),
        ],
      ),
    );
  }

  Widget Balance() {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
            left: 24,
            right: 24,
          ),
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          height: 80,
          width: double.infinity,
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
                      color: Color(0xff4E82EA),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Image.asset(
                'assets/plus.png',
                width: 24,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget Recommended() {
    return Padding(
      padding: EdgeInsets.only(left: 24, right: 24, top: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Recommended Hotels',
            style: GoogleFonts.poppins(
              color: Color(0xff2A2B3D),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'View all',
            style: GoogleFonts.poppins(
              color: Color(0xff4E82EA),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget Slider() {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Row(
              children: [
                RecommendedHotel(
                  imageUrl: 'assets/recommended1.png',
                  title: 'Bimosaurus Hotel',
                  rate: '4,9',
                  location: 'Safari, Buitenzorg',
                  price: 'IDR 599,999',
                ),
                RecommendedHotel(
                  imageUrl: 'assets/recommended1.png',
                  title: 'Bimosaurus Hotel',
                  rate: '4,9',
                  location: 'Safari, Buitenzorg',
                  price: 'IDR 599,999',
                ),
                RecommendedHotel(
                  imageUrl: 'assets/recommended1.png',
                  title: 'Bimosaurus Hotel',
                  rate: '4,9',
                  location: 'Safari, Buitenzorg',
                  price: 'IDR 599,999',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget NewHotel() {
    return Container(
      margin: EdgeInsets.only(
        top: 24,
        left: 24,
        right: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'New Hotels Experience',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xff2A2B3D),
            ),
          ),
          Text(
            'View all',
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xff4E82EA),
            ),
          ),
        ],
      ),
    );
  }

  Widget NewHotelCard() {
    return Container(
      width: double.infinity,
      height: 94,
      margin: EdgeInsets.only(
        left: 24,
        right: 24,
        top: 12,
      ),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/new_hotel.png',
            width: 70,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Skytown Hotel',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: Color(0xff2A2B3D),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Sibolga, Medan',
                style: GoogleFonts.poppins(
                  color: Color(0xffB7B7B7),
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            '4,9',
            style: GoogleFonts.poppins(
              color: Color(0xffB7B7B7),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            width: 2,
          ),
          Image.asset(
            'assets/star.png',
            width: 18,
          ),
        ],
      ),
    );
  }
}
