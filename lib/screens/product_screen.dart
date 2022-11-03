import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../route/route_pages.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 52.w),
            child: Stack(
              children: [
                Image.asset(
                  'assets/product/main.png',
                  height: 455.h,
                  width: 323.w,
                ),
                Positioned(
                  top: 53.h,
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      height: 40.h,
                      width: 40.h,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(6.0.r),
                      ),
                      child: const Center(
                        child: Icon(Icons.arrow_back_ios_new_sharp),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: Row(
              children: [
                Text(
                  'Minimal Stand',
                  style: GoogleFonts.gelasio(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25.w,
            ),
            child: Row(
              children: [
                Text(
                  '\$ 50',
                  style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 30.sp,
                    color: const Color(
                      0xff303030,
                    ),
                  ),
                ),
                SizedBox(
                  width: 149.w,
                ),
                Container(
                  width: 30.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Icon(Icons.add),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  '01',
                  style: GoogleFonts.nunitoSans(
                      fontSize: 18.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Container(
                  width: 30.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Center(
                    child: SvgPicture.asset('assets/product/minus.svg'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  '4.5',
                  style: GoogleFonts.nunitoSans(
                      fontSize: 18.sp, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  '(50 reviews)',
                  style: GoogleFonts.nunitoSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff808080)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 14.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w, right: 25.w),
            child: Text(
              'Minimal stand is made of by natural wood. The\ndesign that is very simple and minimal'
              '. This is truly\none of the best furnitures in any family for now. With 3 differents colors,'
              'you can easily select the best match for your home.',
              style: GoogleFonts.nunitoSans(
                fontSize: 14.sp,
                fontWeight: FontWeight.w300,
                color: const Color(0xff808080),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w, right: 25.w),
            child: Row(
              children: [
                Container(
                  height: 60.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                    color: const Color(0xffF0F0F0),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: const Icon(Icons.bookmark_outline_outlined),
                ),
                SizedBox(
                  width: 15.w,
                ),
               addToCard(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  addToCard(context) {
    return  InkWell(
      onTap: () => Navigator.pushNamed(context, RoutesName.cartScreen),
      child: Container(
        width: 250.w,
        height: 60.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: const Color(0xff242424),
        ),
        child: Center(
          child: Text(
            'Add to cart',
            style: GoogleFonts.nunitoSans(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
