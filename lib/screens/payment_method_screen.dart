import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  bool isFirstChecked = false;
  bool isSecondChecked = false;

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
              title: 'Payment method',
            ),
            SizedBox(
              height: 44.h,
            ),
            Card(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: SvgPicture.asset(
                'assets/paymentMethod/atmcard.svg',
              ),
            ),
            // SizedBox(
            //   height: 12.h,
            // ),
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
            SizedBox(
              height: 15.h,
            ),
            Card(
              color: Colors.black87,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: SvgPicture.asset(
                'assets/paymentMethod/atmcard.svg',
              ),
            ),
            Row(
              children: [
                Checkbox(
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isSecondChecked,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  onChanged: (bool? value) {
                    setState(
                      () {
                        isSecondChecked = value!;
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
        SizedBox(),
      ],
    );
  }
}
