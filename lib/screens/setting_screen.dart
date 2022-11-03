import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool light = true;
  bool arriveLight = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
              top: 20.h,
            ),
            child: Column(
              children: [
                thisPageHeader(
                    imgUrl: 'assets/profile/arrow.svg', title: 'settings'),
                SizedBox(
                  height: 19.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Personal information',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff909191),
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/checkout/checkout.svg',
                      color: Colors.grey,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  width: 335.w,
                  height: 70.h,
                  child: Card(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle: GoogleFonts.nunitoSans(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff808080),
                        ),
                        hintText: 'Asif Afridi',
                        hintStyle: GoogleFonts.nunitoSans(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff242424),
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  width: 335.w,
                  height: 70.h,
                  child: Card(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: GoogleFonts.nunitoSans(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff808080),
                        ),
                        hintText: 'asifafridi066@gmail.com',
                        hintStyle: GoogleFonts.nunitoSans(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff242424),
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Password',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff909191),
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/checkout/checkout.svg',
                      color: Colors.grey,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  width: 335.w,
                  height: 70.h,
                  child: Card(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: GoogleFonts.nunitoSans(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff808080),
                        ),
                        hintText: '*********',
                        hintStyle: GoogleFonts.nunitoSans(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff242424),
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Notification',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff909191),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 11.h,
                ),
                SizedBox(
                  width: 335.w,
                  height: 64.h,
                  child: Card(
                      child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.w,
                      right: 18.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sale',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff242424),
                          ),
                        ),
                        Switch(
                            value: light,
                            activeColor: Colors.green,
                            onChanged: (bool value) {
                              setState(() {
                                light = value;
                              });
                            })
                      ],
                    ),
                  )),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  width: 335.w,
                  height: 64.h,
                  child: Card(
                      child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.w,
                      right: 18.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'New arrivals',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff242424),
                          ),
                        ),
                        Switch(
                            value: arriveLight,
                            activeColor: Colors.green,
                            onChanged: (bool value) {
                              setState(() {
                                arriveLight = value;
                              });
                            })
                      ],
                    ),
                  )),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  width: 335.w,
                  height: 64.h,
                  child: Card(
                      child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.w,
                      top: 17.w,
                    ),
                    child: Text(
                      'Delivery status Changes',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff242424),
                      ),
                    ),
                  )),
                ),
                SizedBox(
                  height: 35.h,
                ),
                Row(
                  children: [
                    Text(
                      'Help Center',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff909191),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  width: 335.w,
                  height: 64.h,
                  child: Card(
                      child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.w,
                      right: 18.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'FAQ',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff242424),
                          ),
                        ),
                        const Icon(Icons.arrow_forward_ios_sharp)
                      ],
                    ),
                  )),
                ),
              ],
            ),
          ),
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
        const SizedBox()
      ],
    );
  }
}
