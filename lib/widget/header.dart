import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../route/route_pages.dart';
import '../screens/login_screen.dart';

class Header extends StatelessWidget {
  Header({
    Key? key,
    required this.imgUrl,
    required this.onClick,
    required this.title,
  }) : super(key: key);

  String imgUrl;
  String title;
  VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
         onTap: onClick,
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
        InkWell(
          onTap: () => Navigator.pushNamed(context, RoutesName.loginScreen),
          child: SvgPicture.asset('assets/profile/logout.svg'),
        )
      ],
    );
  }
}
