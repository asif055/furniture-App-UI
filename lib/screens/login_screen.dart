import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/widget/login_sign_up_button.dart';
import 'package:google_fonts/google_fonts.dart';

import '../route/route_pages.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  
  void login(context) {
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
              height: 31.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30.w,
                right: 30.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'HELLO !',
                    style: GoogleFonts.merriweather(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff909090),
                    ),
                  ),
                  Text(
                    'WELCOME BACK',
                    style: GoogleFonts.merriweather(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Card(
              elevation: 6,
              child: SizedBox(
                width: 345.w,
                height: 437.h,
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
                            'Email',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35.h,
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
                              fontSize: 15.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                      Text(
                        'Forgot Password',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      LoginSignUpButton(title: 'Login', ontap: () => login(context),),
                      SizedBox(
                        height: 30.h,
                      ),
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, RoutesName.signUpScreen),
                        child: Text(
                          'SIGN UP',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff303030),
                          ),
                        ),
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
