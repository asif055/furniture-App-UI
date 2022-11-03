import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/header.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
    with TickerProviderStateMixin {
  onclick(context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 60.h,
        ),
        child: Column(
          children: [
            Header(
              imgUrl: 'assets/profile/arrow.svg',
              title: 'My order',
              onClick: () => onclick(context),
            ),
            SizedBox(
              height: 19.h,
            ),
            TabBar(
              controller: tabController,
              isScrollable: true,
              indicatorColor: Colors.black,
              indicatorWeight: 4.0,
              labelColor: Colors.black,
              labelStyle: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
              unselectedLabelColor: const Color(0xff999999),
              unselectedLabelStyle: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
              ),
              indicatorPadding: EdgeInsets.only(
                left: 24.w,
                right: 24.w,
              ),
              tabs: [
                Tab(child: tab1()),
                Tab(child: tab2()),
                Tab(child: tab3()),
              ],
            ),
            // SizedBox(height: 20.h),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        deliveryCard(),
                        deliveryCard(),
                        deliveryCard(),
                        deliveryCard(),
                        deliveryCard(),
                        deliveryCard(),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        deliveryCard(),
                        deliveryCard(),
                        deliveryCard(),
                        deliveryCard(),
                        deliveryCard(),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        deliveryCard(),
                        deliveryCard(),
                      ],
                    ),
                  ),
                  // deliveryCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget deliveryCard() {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: SizedBox(
        height: 172.w,
        width: 335.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order No238592749',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff242424),
                    ),
                  ),
                  Text(
                    '22/10/2022',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff808080),
                    ),
                  ),
                ],
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
              padding: EdgeInsets.only(left: 10.w, right: 10.h),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Quantity: ',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff808080),
                        ),
                      ),
                      Text(
                        '03',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff242424),
                        ),
                      ),
                      SizedBox(
                        width: 53.w,
                      ),
                      Text(
                        'Total Amount: ',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff808080),
                        ),
                      ),
                      Text(
                        '\$150',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff242424),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset('assets/profile/detailbtn.svg'),
                      Text(
                        'Delivered',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff27AE60),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  tab1() {
    return Text(
      'Delivered',
      style: GoogleFonts.nunitoSans(
          // fontSize: 18.sp,
          // fontWeight: FontWeight.w700,
          ),
    );
  }

  tab2() {
    return Text(
      'Processing',
      style: GoogleFonts.nunitoSans(
          // fontSize: 18.sp,
          // fontWeight: FontWeight.w400,
          // color: const Color(0xff999999),
          ),
    );
  }

  tab3() {
    return Text(
      'Cancelled',
      style: GoogleFonts.nunitoSans(
          // fontSize: 18.sp,
          // fontWeight: FontWeight.w400,
          // color: const Color(0xff999999),
          ),
    );
  }
}
