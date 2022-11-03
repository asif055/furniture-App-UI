import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/widget/login_sign_up_button.dart';
import 'package:google_fonts/google_fonts.dart';

import '../route/route_pages.dart';

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 93.w,
              right: 93.w,
              top: 124.h,
            ),
            child: Text(
              'SUCCESS!',
              style: GoogleFonts.merriweather(
                  fontSize: 36.sp, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Stack(
            children: [
              Positioned(
                child: Image.asset('assets/congrats/congrats.png',
                    color: Colors.grey.withOpacity(0.1)),
              ),
              Positioned(
                top: 14.h,
                left: 35.w,
                right: 33.w,
                child: SvgPicture.asset('assets/congrats/flower.svg'),
              ),
              Positioned(
                top: 180.h,
                left: 35.w,
                right: 33.w,
                child: SvgPicture.asset('assets/congrats/done.svg'),
              ),
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          Text(
            'Your order will be delivered soon.\nThank you for choosing our app!',
            style: GoogleFonts.nunitoSans(
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xff606060),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          LoginSignUpButton(title: 'Track your order', ontap: (){},),
          SizedBox(
            height: 25.h,
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(context, RoutesName.bottomNavigationBar),
            child: Container(
              width: 285.w,
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                shape: BoxShape.rectangle,
                border: Border.all(style: BorderStyle.solid),
              ),
              child: Center(
                child: Text(
                  'BACK TO HOME',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff303030),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
