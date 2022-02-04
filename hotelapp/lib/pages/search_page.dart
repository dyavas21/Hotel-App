import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        unselectedLabelStyle: GoogleFonts.poppins(),
        selectedLabelStyle: GoogleFonts.poppins(),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Color(0xff4E82EA),
        unselectedItemColor: Color(0xffD8D8D8),
        backgroundColor: Color(0xfFFFFF),
        onTap: (value) {
          if (value == 0) {
            Navigator.pushNamed(context, '/');
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/home_nav1.png',
              width: 24,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/search_nav2.png',
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
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title(),
              searchBar(),
              lastestSearch(),
            ],
          ),
        ],
      ),
    );
  }

  Widget title() {
    return Container(
      margin: EdgeInsets.only(
        top: 24,
        left: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Locations',
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: Color(0xffB7B7B7),
            ),
          ),
          Row(
            children: [
              Text(
                'Bandung,',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff2A2B3D),
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                'Indonesia',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff2A2B3D),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget searchBar() {
    return Container(
      padding: EdgeInsets.only(
        left: 24,
        top: 12,
        bottom: 12,
      ),
      height: 48,
      width: double.infinity,
      margin: EdgeInsets.only(
        left: 24,
        right: 24,
        top: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/search_nav.png',
            width: 24,
          ),
          SizedBox(
            width: 11,
          ),
          Text(
            'Find your Favorite Hotels',
            style: GoogleFonts.poppins(
              color: Color(0xffB7B7B7),
            ),
          )
        ],
      ),
    );
  }

  Widget lastestSearch() {
    return Container(
      margin: EdgeInsets.only(
        top: 48,
        left: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Lastest Search',
            style: GoogleFonts.poppins(
              color: Color(0xff2A2B3D),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Container(
                width: 91,
                height: 33,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    'Mason',
                    style: GoogleFonts.poppins(
                      color: Color(0xff2A2B3D),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Container(
                width: 127,
                height: 33,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    'Swissbell',
                    style: GoogleFonts.poppins(
                      color: Color(0xff2A2B3D),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Container(
                width: 77,
                height: 33,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    'Yello',
                    style: GoogleFonts.poppins(
                      color: Color(0xff2A2B3D),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Container(
                width: 135,
                height: 33,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    'GH Setiabudi',
                    style: GoogleFonts.poppins(
                      color: Color(0xff2A2B3D),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Container(
                width: 140,
                height: 33,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    'Damoty Hotel',
                    style: GoogleFonts.poppins(
                      color: Color(0xff2A2B3D),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
