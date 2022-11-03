import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/widget/button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../route/route_pages.dart';

class CheckOutScreen extends StatelessWidget {
  CheckOutScreen({Key? key}) : super(key: key);


  TextStyle style1 = GoogleFonts.nunitoSans(
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    color: const Color(0xff808080),
  ),
      style2 = GoogleFonts.nunitoSans(
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        color: const Color(0xff242424),
      );

  void checkoutOrder(context) {
    Navigator.pushNamed(context, RoutesName.congratsScreen);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: Column(
            children: [
              topHeader(),
              SizedBox(
                height: 19.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shipping Address',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff808080),
                    ),
                  ),
                  SvgPicture.asset('assets/checkout/checkout.svg')
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: SizedBox(
                  height: 127.w,
                  width: 335.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                        EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
                        child: Text(
                          'Bruno Fernendes',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff303030),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Divider(
                        thickness: 2,
                        color: Color(0xffF0F0F0),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, right: 20.h),
                        child: Text(
                          '25 Umar gul road, Peshawer 25000,\nKpk Pakistan',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff808080),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              usebalRow(title: 'Payment'),
              SizedBox(height: 9.h),
              card1(
                title: '**** **** **** 9298',
                imgUrl: 'assets/checkout/mastercard.svg',
              ),
              SizedBox(
                height: 32.h,
              ),
              usebalRow(title: 'Delivery method'),
              SizedBox(
                height: 10.h,
              ),
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: SizedBox(
                  height: 68.w,
                  width: 335.h,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: SvgPicture.asset('assets/checkout/dhl.svg'),
                      ),
                      SizedBox(
                        width: 19.w,
                      ),
                      Text(
                        'Fast (2.3days)',
                        style: GoogleFonts.nunitoSans(
                            fontSize: 14.sp, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              // card 2
              card2(),
              SizedBox(
                height: 10.h,
              ),
              ButtonWidget(title: 'SUBMIT ORDER', onTap: () {
                Navigator.pushNamed(context, RoutesName.congratsScreen);

              },)
            ],
          ),
        ));
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
            'Check out',
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

  Widget usebalRow({required String title}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.nunitoSans(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xff808080),
          ),
        ),
        SvgPicture.asset(
          'assets/checkout/checkout.svg',
          color: Colors.grey,
        )
      ],
    );
  }

  Widget card1({required String title, required String imgUrl}) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: SizedBox(
        height: 68.w,
        width: 335.h,
        child: Row(
          children: [
            SvgPicture.asset(imgUrl),
            Text(
              title,
              style: GoogleFonts.nunitoSans(
                  fontSize: 14.sp, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }

  Widget card2() {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: SizedBox(
        height: 135.w,
        width: 335.h,
        child: Padding(
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order:',
                    style: style1,
                  ),
                  Text(
                    '\$ 95.00',
                    style: style2,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery:',
                    style: style1,
                  ),
                  Text(
                    '\$ 5.00',
                    style: style2,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total:',
                    style: style1,
                  ),
                  Text(
                    '\$ 100.00',
                    style: style2,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
