import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/model/model.dart';
import 'package:furniture_app/widget/button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../route/route_pages.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);

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
  ];
  void checkOut(context) {
    Navigator.pushNamed(context, RoutesName.checkoutScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            topHeader(context),
            SizedBox(
              height: 18.h,
            ),
            Container(
              height: 430.h,
              width: 335.w,
              // color: Colors.green,
              child: ListView.builder(
                  itemCount: favoriteItem.length,
                  itemBuilder: (context, index) {
                    return favouriteContainer(item: favoriteItem[index]);
                  }),
            ),
            SizedBox(
              height: 100.h,
            ),
            promoCodeTextField(),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 40.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total:',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff808080),
                    ),
                  ),
                  Text(
                    '\$ 95.00',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff303030),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ButtonWidget(title: 'Check out', onTap: () => checkOut(context),)
          ],
        ),
      ),
    );
  }

  Widget topHeader(context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 56.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: SizedBox(
                height: 24.h,
                width: 24.w,
                child: Icon(Icons.arrow_back_ios_rounded)),
          ),
          Text(
            'My cart',
            style: GoogleFonts.merriweather(
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
            ),
          ),
          SizedBox(),
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
                    width: 15.w,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 30.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: Colors.grey.withOpacity(0.3),
                        ),
                        child: Icon(Icons.add),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        '01',
                        style: GoogleFonts.nunitoSans(
                            fontSize: 18.sp, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Container(
                        width: 30.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: Colors.grey.withOpacity(0.3),
                        ),
                        child: Center(
                          child: SvgPicture.asset('assets/product/minus.svg'),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          Divider(
            height: 22.w,
            thickness: 2,
            color: Colors.grey.withOpacity(0.1),
          ),
        ],
      ),
    );
  }

  Widget promoCodeTextField() {
    return SizedBox(
      width: 335.w,
      height: 55.h,
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r),),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Enter your promo code',
            hintStyle: GoogleFonts.nunitoSans(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: const Color(0xff909090),
            ),
            suffixIcon: Container(
              height: 44.h,
              width: 44.w,
              decoration: BoxDecoration(
                color: const Color(0xff303030),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
            ),
            border: UnderlineInputBorder(borderSide: BorderSide.none)
            // border: OutlineInputBorder(
            //     borderSide: const BorderSide(
            //       style: BorderStyle.solid,
            //     ),
            //     borderRadius: BorderRadius.circular(8.0)),
          ),
        ),
      ),
    );
  }
}
