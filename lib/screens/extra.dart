import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';


class Extra extends StatelessWidget {
  const Extra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('khan')),
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: ClipRRect(
                  child: Image.asset(
                    'assets/homelist/lamp.png',
                    fit: BoxFit.cover,
                    height: 257.h,
                  ),
                ),
              ),
              // Positioned(
              //   right: 10.w,
              //   bottom: 10.h,
              //   child: Container(
              //     height: 40.h,
              //     width: 40.w,
              //     decoration: BoxDecoration(
              //       color: Colors.grey.withOpacity(0.4),
              //       borderRadius: BorderRadius.circular(8.0.r),
              //     ),
              //     child: const Icon(
              //       Icons.shopping_bag_outlined,
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Some Chair',
                style: GoogleFonts.nunitoSans(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff606060),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                '12.11',
                style: GoogleFonts.nunitoSans(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff303030),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
