import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../route/route_pages.dart';
import '../widget/header.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  myOrder(context) {
    Navigator.pushNamed(context, RoutesName.orderScreen);
  }

  shippingAddress(context) {
    Navigator.pushNamed(context, RoutesName.shippingAddressScreen);
  }

  paymentMethod(context) {
    Navigator.pushNamed(context, RoutesName.paymentMethodScreen);
  }

  myReview(context) {
    Navigator.pushNamed(context, RoutesName.myReviewScreen);
  }

  mySetting(context) {
    Navigator.pushNamed(context, RoutesName.settingScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 44.h,
        ),
        child: Column(
          children: [
            Header(
              imgUrl: 'assets/profile/search.svg',
              title: 'Profile', onClick: () {},
            ),
            SizedBox(height: 18.h),
            Row(
              children: [
                CircleAvatar(
                  radius: 40.r,
                  backgroundImage: const NetworkImage(
                      'https://media.istockphoto.com/photos/young-asian-man-picture-id168383403?k=6&m=168383403&s=612x612&w=0&h=8kjZwkqFXIJOrInUzWnRYbPki5BRXjkkssVLyHv48Ig='),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Asif Afridi',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'asifafridi066@gmail.com',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff808080),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            card(
              title: 'My orders',
              subtitle: 'Already have 10 orders',
              onTicked: () => myOrder(context),
            ),
            card(
              title: 'Shipping Addresses',
              subtitle: '03 Addresses',
              onTicked: () => shippingAddress(context),
            ),
            card(
                title: 'Payment Method',
                subtitle: 'You have 2 cards',
                onTicked: () => paymentMethod(context)),
            card(
                title: 'My Reviews',
                subtitle: 'Reviews for 5 items',
                onTicked: () => myReview(context)),
            card(
                title: 'Setting',
                subtitle: 'Notification, Password, FAQ, Contact',
                onTicked: () => mySetting(context)),
          ],
        ),
      ),
    );
  }

  Widget card({
    required String title,
    required String subtitle,
    required VoidCallback onTicked,
  }) {
    return Column(
      children: [
        Card(
          child: SizedBox(
            width: 335.w,
            height: 80.h,
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.nunitoSans(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: GoogleFonts.nunitoSans(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff808080),
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                      onTap: onTicked,
                      child: const Icon(Icons.arrow_forward_ios_rounded)),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
      ],
    );
  }
}
