import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/widget/button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class AddPaymentScreen extends StatelessWidget {
  const AddPaymentScreen({Key? key}) : super(key: key);

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
                  imgUrl: 'assets/profile/arrow.svg',
                  title: 'Add payment method',
                ),
                SizedBox(
                  height: 34.h,
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
                SizedBox(
                  height: 40.h,
                ),
                Container(
                  width: 335.w,
                  height: 66.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: TextFormField(
                    // controller: nameController,
                    decoration: InputDecoration(
                      labelText: 'CardHolder Name',
                      labelStyle: GoogleFonts.nunitoSans(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff808080),
                      ),
                      hintText: 'Ex: Asif Afridi',
                      hintStyle: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: const Color(0xffB3B3B3),
                      ),
                      border:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 335.w,
                  height: 66.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    // color: const Color(0xffF5F5F5),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'CardNumber',
                      labelStyle: GoogleFonts.nunitoSans(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff808080),
                      ),
                      hintText: '**** **** **** 9298',
                      hintStyle: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: Colors.black,
                      ),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 157.w,
                      height: 66.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: Colors.grey.withOpacity(0.2)),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'CVV',
                          labelStyle: GoogleFonts.nunitoSans(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff808080),
                          ),
                          hintText: 'Ex: 123',
                          hintStyle: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: Colors.black,
                          ),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                    Container(
                      width: 157.w,
                      height: 66.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Expiration Date',
                          labelStyle: GoogleFonts.nunitoSans(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff808080),
                          ),
                          hintText: '01/22',
                          hintStyle: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: Colors.black,
                          ),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 130.h,
                ),
                ButtonWidget(title: 'ADD NEW CARD', onTap: () {},)
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
        SvgPicture.asset(
          imgUrl,
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
