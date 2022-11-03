
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyReviewScreen extends StatefulWidget {
  const MyReviewScreen({Key? key}) : super(key: key);

  @override
  State<MyReviewScreen> createState() => _MyReviewScreenState();
}

class _MyReviewScreenState extends State<MyReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 60.h,
        ),
        child: Column(
          children: [
            thisPageHeader(
              imgUrl: 'assets/profile/arrow.svg',
              title: 'My reviews',
            ),
            Expanded(
              child: SizedBox(
                child: ListView(
                  children: [
                    card(
                        imgUrl: 'assets/favorite/coffeeChair.png',
                        title: 'Minimal Chair',
                        date: '21/08/2022',
                        price: '\$ 50.00'),
                    card(
                        imgUrl: 'assets/favorite/coffeeChair.png',
                        title: 'Minimal Chair',
                        date: '21/08/2022',
                        price: '\$ 50.00'),
                    card(
                        imgUrl: 'assets/favorite/coffeeChair.png',
                        title: 'Minimal Chair',
                        date: '21/08/2022',
                        price: '\$ 50.00'),
                    card(
                        imgUrl: 'assets/favorite/coffeeChair.png',
                        title: 'Minimal Chair',
                        date: '21/08/2022',
                        price: '\$ 50.00'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  thisPageHeader({
    required String imgUrl,
    required String title,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
           onTap: () => Navigator.pop(context),
          child: SvgPicture.asset(
            imgUrl,
          ),
        ),
        Text(
          title,
          style: GoogleFonts.merriweather(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black),
        ),
        SvgPicture.asset('assets/profile/search.svg')
      ],
    );
  }

  Widget card({
    required String imgUrl,
    required String title,
    required String date,
    required String price,
  }) {
    return Card(
      child: SizedBox(
          height: 260.h,
          width: 335.w,
          child: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/favorite/coffeeChair.png'),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Coffee Chair',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff242424),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          price,
                          style: GoogleFonts.nunitoSans(
                              fontSize: 16.sp, fontWeight: FontWeight.w800),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(Icons.star, color: Color(0xffF2C94C)),
                    const Icon(Icons.star, color: Color(0xffF2C94C)),
                    const Icon(Icons.star, color: Color(0xffF2C94C)),
                    const Icon(Icons.star, color: Color(0xffF2C94C)),
                    const Icon(Icons.star, color: Color(0xffF2C94C)),
                    SizedBox(
                      width: 103.w,
                    ),
                    Text(
                      date,
                      style: GoogleFonts.nunitoSans(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff808080),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  'Nice Furniture with good delivery. The delivery time is very fast.'
                  ' Then products look like exactly the picture in the app.'
                  ' Besides, color is also the same and quality is very'
                  ' good despite very cheap price',
                  style: GoogleFonts.nunitoSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff242424)),
                ),
              ],
            ),
          )),
    );
  }
}
