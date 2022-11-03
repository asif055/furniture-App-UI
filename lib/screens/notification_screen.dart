import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            topHeader(),
            SizedBox(height: 15.h,),
            Expanded(
              child: ListView(
                children: [

                  // thisPageHeader(
                  //   imgUrl: 'assets/profile/arrow.svg',
                  //   title: 'Shipping address',
                  // ),
                  SizedBox(
                    height: 15.h,
                  ),
                  firstContainer(),
                  secondContainer(
                      title: 'Your order #123456789 has been cancelled',
                      imgUrl: 'assets/favorite/minimalLamp.png'),
                  thirdContainer(),
                  secondContainer(
                      title: 'Your order #123456789 has been shipped successfully',
                      imgUrl: 'assets/favorite/coffeeTable.png'),
                  secondContainer(
                      title: 'Your order #123456789 has been confirmed',
                      imgUrl: 'assets/favorite/minimalStand.png'),
                  secondContainer(
                      title: 'Your order #123456789 has been shipped cancelled',
                      imgUrl: 'assets/favorite/minimalDesk.png'),
                  secondContainer(
                      title: 'Your order #123456789 has been shipped successfully',
                      imgUrl: 'assets/favorite/coffeeTable.png'),
                  secondContainer(
                      title: 'Your order #123456789 has returned to seller',
                      imgUrl: 'assets/favorite/coffeeTable.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget firstContainer() {
    return Column(
      children: [
        Container(
          width: 375.w,
          height: 95.h,
          color: const Color(0xfff5f5f5),
          child: Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Row(
              children: [
                Image.asset('assets/favorite/coffeeChair.png'),
                SizedBox(
                  width: 10.w,
                ),
                SizedBox(
                  width: 251.w,
                  // color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Your order #123456789 has been confirmed',
                              style: GoogleFonts.nunitoSans(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff242424),
                              ),
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ',
                              style: GoogleFonts.nunitoSans(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff808080)),
                              maxLines: 5,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 20.w),
                            child: Text(
                              'New',
                              style: GoogleFonts.nunitoSans(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w800,
                                color: const Color(0xff27AE60),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Divider(
          indent: 20.w,
        )
      ],
    );
  }

  Widget secondContainer({required String title, required String imgUrl}) {
    return Column(
      children: [
        Container(
          width: 375.w,
          height: 95.h,
          color: const Color(0xfff5f5f5),
          child: Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Row(
              children: [
                Image.asset(imgUrl),
                SizedBox(
                  width: 10.w,
                ),
                SizedBox(
                  width: 251.w,
                  // color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              title,
                              style: GoogleFonts.nunitoSans(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff242424),
                              ),
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ',
                              style: GoogleFonts.nunitoSans(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff808080)),
                              maxLines: 5,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Divider(
          indent: 20.w,
        )
      ],
    );
  }

  topHeader() {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 24.h,
            width: 24.w,
            child: SvgPicture.asset('assets/home/search.svg', color: Colors.black,),
          ),
          Text(
            'Notification',
            style: GoogleFonts.merriweather(
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
            ),
          ),
          SizedBox(),
        ],
      ),
    );
  }

  Widget thirdContainer() {
    return Column(
      children: [
        Container(
          width: 375.w,
          height: 95.h,
          color: const Color(0xffF0F0F0),
          child: Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Row(
              children: [
                SizedBox(
                  width: 350.w,
                  // color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Your order #123456789 has been confirmed',
                              style: GoogleFonts.nunitoSans(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff303030),
                              ),
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis pretium et in arcu adipiscing nec. Turpis pretium et in arcu adipiscing nec. ',
                              style: GoogleFonts.nunitoSans(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff808080)),
                              maxLines: 5,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 20.w),
                            child: Text(
                              'HOT!',
                              style: GoogleFonts.nunitoSans(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w800,
                                color: const Color(0xffEB5757),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Divider(
          indent: 20.w,
        )
      ],
    );
  }
}
