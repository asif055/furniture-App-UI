import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/widget/button_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:csc_picker/csc_picker.dart';

class AddShippingAddressScreen extends StatefulWidget {
  const AddShippingAddressScreen({Key? key}) : super(key: key);

  @override
  State<AddShippingAddressScreen> createState() =>
      _AddShippingAddressScreenState();
}

class _AddShippingAddressScreenState extends State<AddShippingAddressScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  String countryValue = '';
  String cityValue = '';
  String distritValue = '';

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
                  title: 'Add shipping address',
                ),
                SizedBox(
                  height: 27.h,
                ),
                Container(
                  width: 335.w,
                  height: 66.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: 'Full name',
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
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: TextFormField(
                    controller: addressController,
                    decoration: InputDecoration(
                      labelText: 'Address',
                      labelStyle: GoogleFonts.nunitoSans(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff808080),
                      ),
                      hintText: 'Ex: Street 08,Gulberg Green Islamabad',
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
                      labelText: 'Zipcode (Postal Code)',
                      labelStyle: GoogleFonts.nunitoSans(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff808080),
                      ),
                      hintText: 'Kpk 25000',
                      hintStyle: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: const Color(0xffB3B3B3),
                      ),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                // Container(
                //   width: 335.w,
                //   height: 66.h,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8.r),
                //     color: Colors.grey.withOpacity(0.2),
                //   ),
                //   child: TextFormField(
                //     controller: countryController,
                //     decoration: InputDecoration(
                //       labelText: 'Country',
                //       labelStyle: GoogleFonts.nunitoSans(
                //         fontSize: 12.sp,
                //         fontWeight: FontWeight.w400,
                //         color: const Color(0xff808080),
                //       ),
                //       suffixIcon: InkWell(
                //         onTap: () {
                //           CSCPicker(
                //             onCountryChanged: (value) {
                //               setState(() {
                //                 countryValue = value;
                //               });
                //             },
                //           );
                //         },
                //         child: const Icon(
                //           Icons.keyboard_arrow_down_sharp,
                //           color: Colors.black,
                //         ),
                //       ),
                //       hintText: 'Select Country',
                //       hintStyle: GoogleFonts.nunitoSans(
                //         fontWeight: FontWeight.w600,
                //         fontSize: 16.sp,
                //         color: const Color(0xffB3B3B3),
                //       ),
                //       border:
                //           const OutlineInputBorder(borderSide: BorderSide.none),
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: 20.h,
                // ),
                // Container(
                //   width: 335.w,
                //   height: 66.h,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8.r),
                //     // color: const Color(0xffF5F5F5),
                //   ),
                //   child: TextFormField(
                //     controller: cityController,
                //     decoration: InputDecoration(
                //       labelText: 'City',
                //       labelStyle: GoogleFonts.nunitoSans(
                //         fontSize: 12.sp,
                //         fontWeight: FontWeight.w400,
                //         color: const Color(0xff808080),
                //       ),
                //       suffixIcon: InkWell(
                //         onTap: () {
                //           CSCPicker(
                //             layout: Layout.vertical,
                //             onCityChanged: (value) {
                //               setState(() {
                //                 cityValue = value!;
                //               });
                //             },
                //           );
                //         },
                //         child: const Icon(
                //           Icons.keyboard_arrow_down_sharp,
                //           color: Colors.black,
                //         ),
                //       ),
                //       hintText: 'Pakistan',
                //       hintStyle: GoogleFonts.nunitoSans(
                //         fontWeight: FontWeight.w600,
                //         fontSize: 16.sp,
                //         color: const Color(0xffB3B3B3),
                //       ),
                //       border: const OutlineInputBorder(),
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: 20.h,
                // ),
                // Container(
                //   width: 335.w,
                //   height: 66.h,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8.r),
                //     color: Colors.grey.withOpacity(0.2),
                //   ),
                //   child: TextFormField(
                //     controller: districtController,
                //     decoration: InputDecoration(
                //       labelText: 'District',
                //       labelStyle: GoogleFonts.nunitoSans(
                //         fontSize: 12.sp,
                //         fontWeight: FontWeight.w400,
                //         color: const Color(0xff808080),
                //       ),
                //       suffixIcon: InkWell(
                //         onTap: () {
                //           CSCPicker(
                //             onStateChanged: (value) {
                //               setState(() {
                //                 distritValue = value!;
                //               });
                //             },
                //           );
                //         },
                //         child: const Icon(
                //           Icons.keyboard_arrow_down_sharp,
                //           color: Colors.black,
                //         ),
                //       ),
                //       hintText: 'Select District',
                //       hintStyle: GoogleFonts.nunitoSans(
                //         fontWeight: FontWeight.w600,
                //         fontSize: 16.sp,
                //         color: const Color(0xffB3B3B3),
                //       ),
                //       border:
                //           const OutlineInputBorder(borderSide: BorderSide.none),
                //     ),
                //   ),
                // ),
                Container(
                  height: 280.h,
                  child: Column(
                    children: [
                      CSCPicker(
                        // countryDropdownLabel: countryValue,
                        // stateDropdownLabel: distritValue,
                        // cityDropdownLabel: cityValue,
                        showStates: true,
                        showCities: true,
                        layout: Layout.vertical,
                        flagState: CountryFlag.DISABLE,

                        dropdownDecoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                            border:
                            Border.all(color: Colors.grey.shade300, width: 1)),

                        onCountryChanged: (value) {
                          setState(() {
                            countryValue = value;
                          });
                        },
                        onStateChanged: (value) {
                          setState(() {
                            distritValue = value!;
                          });
                        },
                        onCityChanged: (value) {
                          setState(() {
                            cityValue = value!;
                          });
                        },

                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 106.h,
                ),
                ButtonWidget(title: 'SAVE ADDRESS', onTap: () {},)
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
