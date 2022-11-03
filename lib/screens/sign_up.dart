import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/widget/login_sign_up_button.dart';
import 'package:google_fonts/google_fonts.dart';

import '../route/route_pages.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
 
  void signUp(context) {
    Navigator.pushNamed(context, RoutesName.bottomNavigationBar);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 65.h,
                left: 30.w,
                right: 30.w,
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      height: 30.w,
                      endIndent: 15,
                      color: const Color(0xffBDBDBD),
                    ),
                  ),
                  SvgPicture.asset('assets/login/svgchair.svg'),
                  const Expanded(
                    child: Divider(
                      thickness: 2,
                      indent: 15,
                      color: Color(0xffBDBDBD),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30.w,
              ),
              child: Text(
                'WELCOME',
                style: GoogleFonts.merriweather(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff909090),
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Card(
              elevation: 6,
              child: SizedBox(
                width: 345.w,
                height: 550.h,
                // decoration: BoxDecoration(color: Colors.white, boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey.withOpacity(0.2),
                //     spreadRadius: 5.0,
                //     blurRadius: 6.0,
                //     offset: Offset(10.0, 10.0),
                //   ),
                // ]),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 30.w,
                    top: 25.h,
                    // right: 30.w,
                  ),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text(
                            'Name',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text(
                            'Email',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: SvgPicture.asset('assets/login/obsecure.svg'),
                          ),
                          label: Text(
                            'Password',
                            style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: SvgPicture.asset('assets/login/obsecure.svg'),
                          ),
                          label: Text(
                            'Confirm Password',
                            style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      LoginSignUpButton(title: 'SIGN UP', ontap:() => signUp(context) ,),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have account?',
                            style: GoogleFonts.nunitoSans(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff808080)),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, RoutesName.loginScreen);
                            },
                            child: Text(
                              ' SIGN IN',
                              style: GoogleFonts.nunitoSans(
                                  fontSize: 14.sp, fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
