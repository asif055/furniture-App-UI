import 'package:flutter/material.dart';
import 'package:furniture_app/route/route_pages.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 812.h,
            width: 375.w,
            child: Image.asset(
              'assets/splashImg/splashImg.png',
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 231.h,
            left: 30.w,
            child: Text(
              'MAKE YOUR',
              style: GoogleFonts.gelasio(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff606060)),
            ),
          ),
          Positioned(
            top: 276.h,
            left: 30.w,
            child: Text(
              'HOME BEAUTIFUL',
              style: GoogleFonts.gelasio(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff303030)),
            ),
          ),
          Positioned(
            top: 349.h,
            left: 59.w,
            child: Text(
              'The best simple place where you\ndiscover most wonderful furnitures\nand make your home beautiful',
              style: GoogleFonts.nunitoSans(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff808080)),
            ),
          ),
          Positioned(
            left: 108.w,
            bottom: 150.h,
            top: 608.h,
            child: InkWell(
              onTap: () => Navigator.pushNamed(context, RoutesName.loginScreen),
              child: Container(
                width: 159.h,
                height: 54.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color(0xff242424),
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: GoogleFonts.gelasio(
                      color: Colors.white,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
