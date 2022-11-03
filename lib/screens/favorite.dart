import 'package:flutter/material.dart';
import 'package:furniture_app/widget/button_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../model/model.dart';
import '../route/route_pages.dart';

class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({Key? key}) : super(key: key);

  List<FavoriteItem> favoriteItem = [
    FavoriteItem(
      'Coffee Table',
      '\$ 50.00',
      'assets/favorite/coffeeTable.png',
      'assets/favorite/cross.svg',
      'assets/favorite/shopbar.svg',
    ),
    FavoriteItem(
      'Coffee Chair',
      '\$ 20.00',
      'assets/favorite/coffeeChair.png',
      'assets/favorite/cross.svg',
      'assets/favorite/shopbar.svg',
    ),
    FavoriteItem(
      'Minimal Desk',
      '\$ 50.00',
      'assets/favorite/minimalDesk.png',
      'assets/favorite/cross.svg',
      'assets/favorite/shopbar.svg',
    ),
    FavoriteItem(
      'Minimal Lamp',
      '\$ 12.00',
      'assets/favorite/minimalLamp.png',
      'assets/favorite/cross.svg',
      'assets/favorite/shopbar.svg',
    ),
    FavoriteItem(
      'Minimal Stand',
      '\$ 25.00',
      'assets/favorite/minimalStand.png',
      'assets/favorite/cross.svg',
      'assets/favorite/shopbar.svg',
    ),
    FavoriteItem(
      'Minimal Desk',
      '\$ 50.00',
      'assets/favorite/minimalDesk.png',
      'assets/favorite/cross.svg',
      'assets/favorite/shopbar.svg',
    ),
    FavoriteItem(
      'Minimal Stand',
      '\$ 25.00',
      'assets/favorite/minimalStand.png',
      'assets/favorite/cross.svg',
      'assets/favorite/shopbar.svg',
    ),
    FavoriteItem(
      'Minimal Desk',
      '\$ 50.00',
      'assets/favorite/minimalDesk.png',
      'assets/favorite/cross.svg',
      'assets/favorite/shopbar.svg',
    ),
    FavoriteItem(
      'Minimal Stand',
      '\$ 25.00',
      'assets/favorite/minimalStand.png',
      'assets/favorite/cross.svg',
      'assets/favorite/shopbar.svg',
    ),
    FavoriteItem(
      'Minimal Desk',
      '\$ 50.00',
      'assets/favorite/minimalDesk.png',
      'assets/favorite/cross.svg',
      'assets/favorite/shopbar.svg',
    ),
  ];

  void addedToCart(context) {
    Navigator.pushNamed(context, RoutesName.cartScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          topHeader(),
          SizedBox(
            height: 18.h,
          ),
          Container(
            height: 588.h,
            width: 335.w,
            // color: Colors.green,
            child: ListView.builder(
                itemCount: favoriteItem.length,
                itemBuilder: (context, index) {
                  return favouriteContainer(item: favoriteItem[index]);
                }),
          ),
          ButtonWidget(
            title: 'Added all to my cart',
            onTap: () {
              addedToCart(context);
            },
          ),
          SizedBox(
            height: 20.h,
          ),

          // favouriteContainer(),
          // Divider(height: 25.w, endIndent: 20.w, indent: 20.w, thickness: 2),
          // Padding(
          //   padding: EdgeInsets.only(
          //     top: 280.h,
          //     bottom: 97.h,
          //   ),
          //   child: ButtonWidget(title: 'Added all to my cart'),
          // )
        ],
      ),
    );
  }

  Widget favouriteContainer({required FavoriteItem item}) {
    return Container(
      height: 126.h,
      // color: Colors.grey,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                item.imgUrl,
                height: 100.h,
                width: 100.w,
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //3 row in this column

                  SizedBox(
                    width: 222.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item.title,
                          style: GoogleFonts.nunitoSans(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff606060),
                          ),
                        ),
                        // SizedBox(width: 105.w),
                        SvgPicture.asset(item.crossIconUrl),
                      ],
                    ),
                  ),
                  Text(
                    item.price,
                    style: GoogleFonts.nunitoSans(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff303030),
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  SizedBox(
                    width: 222.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SvgPicture.asset(item.shopbagIconUrl),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          Divider(height: 22.w, thickness: 2),
        ],
      ),
    );

    // return Column(
    //   children: [
    //     Padding(
    //       padding: EdgeInsets.only(left: 20.w,),
    //       child: Row(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Image.asset(
    //             item.imgUrl,
    //             height: 100.h,
    //             width: 100.w,
    //           ),
    //           SizedBox(
    //             width: 20.w,
    //           ),
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text(
    //                 item.title,
    //                 style: GoogleFonts.nunitoSans(
    //                   fontSize: 14.sp,
    //                   fontWeight: FontWeight.w600,
    //                   color: const Color(0xff606060),
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: 5.h,
    //               ),
    //               Text(
    //                 item.price,
    //                 style: GoogleFonts.nunitoSans(
    //                   fontSize: 16.sp,
    //                   fontWeight: FontWeight.w700,
    //                   color: const Color(0xff303030),
    //                 ),
    //               ),
    //             ],
    //           ),
    //           SizedBox(
    //             width: 108.w,
    //           ),
    //           Column(
    //             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               SvgPicture.asset(item.crossIconUrl),
    //               SizedBox(
    //                 height: 41.h,
    //               ),
    //               SvgPicture.asset(item.shopbagIconUrl),
    //
    //             ],
    //           ),
    //         ],
    //       ),
    //     ),
    //     Divider(height: 25.w, endIndent: 20.w, indent: 20.w, thickness: 2),
    //   ],
    // );
  }

  topHeader() {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 56.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 24.h,
            width: 24.w,
            child: SvgPicture.asset('assets/home/search.svg'),
          ),
          Text(
            'Favorites',
            style: GoogleFonts.merriweather(
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
            ),
          ),
          SizedBox(
            height: 24.h,
            width: 24.w,
            child: SvgPicture.asset(
              'assets/home/card.svg',
              // color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
