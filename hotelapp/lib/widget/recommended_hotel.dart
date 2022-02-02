import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecommendedHotel extends StatelessWidget {
  String? imageUrl;
  String? title;
  String? location;
  String? rate;
  String? price;

  RecommendedHotel({
    this.imageUrl,
    this.location,
    this.price,
    this.rate,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 12,
        top: 12,
        right: 12,
      ),
      margin: EdgeInsets.only(
        left: 24,
      ),
      width: 280,
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl!,
            width: 256,
            height: 200,
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff2A2B3D),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/location.png',
                        width: 16,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        location!,
                        style: GoogleFonts.poppins(
                          color: Color(0xffB7B7B7),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Spacer(),
              Text(
                rate!,
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
          SizedBox(
            height: 18,
          ),
          Container(
            width: 280,
            decoration: BoxDecoration(
              color: Color(0xffEEEEEE),
            ),
          ),
          SizedBox(
            height: 19,
          ),
          Row(
            children: [
              Text(
                'Price start from',
                style: GoogleFonts.poppins(
                  color: Color(0xffB7B7B7),
                  fontSize: 12,
                ),
              ),
              Spacer(),
              Text(
                price!,
                style: GoogleFonts.poppins(
                  color: Color(0xff4E82EA),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Text(
                '/night',
                style: GoogleFonts.poppins(
                  color: Color(0xffB7B7B7),
                  fontSize: 10,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
