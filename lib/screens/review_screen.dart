import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/widget/button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 730.h,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    topHeader(),
                    SizedBox(
                      height: 19.h,
                    ),
                    container1(),
                    SizedBox(
                      height: 20.h,
                    ),
                    card(
                        title: 'Bruno Fernendes',
                        imgUrl: 'assets/review/boy1.png',
                        date: '21/10/2022'),
                    card(
                        title: 'Tracy Mosby',
                        imgUrl: 'assets/review/girl1.png',
                        date: '21/10/2022'),
                    card(
                        title: 'Mailna Jee',
                        imgUrl: 'assets/review/girl2.png',
                        date: '21/10/2022'),
                    card(
                        title: 'Bruno Fernendes',
                        imgUrl: 'assets/review/boy1.png',
                        date: '21/10/2022'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12.h,),
            ButtonWidget(title: 'Write Review', onTap: (){}),
          ],
        ),
      ),
    );
  }

  Widget topHeader() {
    return Padding(
      padding: EdgeInsets.only(top: 56.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 24.h,
            width: 24.w,
            child: const Icon(Icons.arrow_back_ios_rounded),
          ),
          Text(
            'Rating & Review',
            style: GoogleFonts.merriweather(
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
            ),
          ),
          const SizedBox(),
        ],
      ),
    );
  }

  Widget container1() {
    return Container(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color(0xffF2C94C),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        '4.5',
                        style: GoogleFonts.nunitoSans(
                            fontSize: 24.sp, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  Text(
                    '10 Reviews',
                    style: GoogleFonts.nunitoSans(
                        fontSize: 18.sp, fontWeight: FontWeight.w600),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          const Divider(),
        ],
      ),
    );
  }

  Widget card({
    required String imgUrl,
    required String title,
    required String date,
  }) {
    return Card(
      child: SizedBox(
        height: 210.h,
        width: 335.w,
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(imgUrl),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.nunitoSans(
                        fontSize: 14.sp, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    date,
                    style: GoogleFonts.nunitoSans(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff808080),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: const [
                  Icon(Icons.star, color: Color(0xffF2C94C)),
                  Icon(Icons.star, color: Color(0xffF2C94C)),
                  Icon(Icons.star, color: Color(0xffF2C94C)),
                  Icon(Icons.star, color: Color(0xffF2C94C)),
                  Icon(Icons.star, color: Color(0xffF2C94C)),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Nice Furniture with good delivery. The delivery time is very fast.'
                ' Then products look like exactly the picture in the app.'
                ' Besides, color is also the same and quality is very'
                ' good despite very cheap price',
                style: GoogleFonts.nunitoSans(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff242424),
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
