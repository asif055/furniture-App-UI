import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ShippingAddressScreen extends StatefulWidget {
  const ShippingAddressScreen({Key? key}) : super(key: key);

  @override
  State<ShippingAddressScreen> createState() => _ShippingAddressScreenState();
}

class _ShippingAddressScreenState extends State<ShippingAddressScreen> {
  bool isFirstChecked = false;
  bool isSeondChecked = false;
  bool isThirdChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveState = <MaterialState>{
        MaterialState.pressed,
        MaterialState.focused,
        MaterialState.hovered,
      };
      if (states.any(interactiveState.contains)) {
        return Colors.blue;
      }
      return Colors.black;
    }

    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(right: 10.w, bottom: 20.h),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.black,
          child: const Icon(Icons.add),
        ),
      ),
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
              title: 'Shipping address',
            ),
            SizedBox(
              height: 19.h,
            ),
            Row(
              children: [
                Checkbox(
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isFirstChecked,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  onChanged: (bool? value) {
                    setState(
                      () {
                        isFirstChecked = value!;
                      },
                    );
                  },
                ),
                Text(
                  'Use as the Shipping address',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff242424),
                  ),
                )
              ],
            ),
            shippingCard(),
            Row(
              children: [
                Checkbox(
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isSeondChecked,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  onChanged: (bool? value) {
                    setState(
                      () {
                        isSeondChecked = value!;
                      },
                    );
                  },
                ),
                Text(
                  'Use as the Shipping address',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff242424),
                  ),
                )
              ],
            ),
            shippingCard(),
            Row(
              children: [
                Checkbox(
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isThirdChecked,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  onChanged: (bool? value) {
                    setState(
                      () {
                        isThirdChecked = value!;
                      },
                    );
                  },
                ),
                Text(
                  'Use as the Shipping address',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff242424),
                  ),
                )
              ],
            ),
            shippingCard(),
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
          onTap:() =>  Navigator.pop(context),
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
        SizedBox(),
      ],
    );
  }

  Widget shippingCard() {
    return Column(
      children: [
        SizedBox(
          height: 127.h,
          width: 335.w,
          child: Card(
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 10.w, top: 10.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bruno Fernendes',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff303030),
                        ),
                      ),
                      SvgPicture.asset('assets/checkout/checkout.svg'),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Divider(
                    thickness: 1,
                    color: Color(0xffF0F0F0),
                  ),
                  Text(
                    '25 rue Robert Latouche, Nice, 06200, Côte D’azur, France',
                    style: GoogleFonts.nunitoSans(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff808080)),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        )
      ],
    );
  }
}
