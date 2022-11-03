

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/model/model.dart';
import 'package:google_fonts/google_fonts.dart';

import '../route/route_pages.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {

  List<homeContainer> homeData = [
    homeContainer('assets/home/star.svg', 'Popular'),
    homeContainer('assets/home/chair.svg', 'Chair'),
    homeContainer('assets/home/table.svg', 'Table'),
    homeContainer('assets/home/sofa.svg', 'Armchair'),
    homeContainer('assets/home/bed.svg', 'Bed'),
    homeContainer('assets/home/chair.svg', 'Chair'),
    homeContainer('assets/home/table.svg', 'Table'),
    homeContainer('assets/home/chair.svg', 'Chair'),
    homeContainer('assets/home/table.svg', 'Table'),
  ];

  List<GridHomeItem> gridItem = [
    GridHomeItem('Black Simple Lamp', 'assets/homelist/lamp.jpg', '\$12.00'),
    GridHomeItem('Minimal Stand', 'assets/homelist/stand.jpg', '\$25.00'),
    GridHomeItem('Coffee Chair', 'assets/homelist/chair.jpg', '\$20.00'),
    GridHomeItem('Simple Desk', 'assets/homelist/desk.jpg', '\$50.00'),
    GridHomeItem('Black Simple Lamp', 'assets/homelist/lamp.jpg', '\$12.00'),
    GridHomeItem('Minimal Stand', 'assets/homelist/stand.jpg', '\$25.00'),
    GridHomeItem('Coffee Chair', 'assets/homelist/chair.jpg', '\$20.00'),
    GridHomeItem('Simple Desk', 'assets/homelist/desk.jpg', '\$50.00'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 18.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 24.h,
                    width: 24.w,
                    child: SvgPicture.asset('assets/home/search.svg'),
                  ),
                  Column(
                    children: [
                      Text(
                        'Make home',
                        style: GoogleFonts.merriweather(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        'BEAUTIFUL',
                        style: GoogleFonts.merriweather(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, RoutesName.cartScreen),
                    child: SizedBox(
                      height: 24.h,
                      width: 24.w,
                      child: SvgPicture.asset(
                        'assets/home/card.svg',
                        // color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 70.h,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: homeData.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ListOfItem(item: homeData[index]);
                    }),
              ),
              SizedBox(
                height: 20.h,
              ),
              // listOfGridItem(),
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 18,
                      crossAxisCount: 2,
                      childAspectRatio:
                          MediaQuery.of(context).size.height / 1200,
                      crossAxisSpacing: 21,
                    ),
                    // chil: MediaQuery.of(context).size.height / 1100,
                    itemCount: gridItem.length,
                    itemBuilder: (context, index) {
                      return listOfGridItem(item: gridItem[index], context);
                    }),
              ),

              // list of gri item on home page
            ],
          ),
        ),
      ),
    );
  }
}

Widget ListOfItem({required homeContainer item}) {
  return SizedBox(
    height: 400.h,
    width: 60.w,
    child: Column(
      children: [
        SvgPicture.asset(item.imgUrl),
        SizedBox(
          height: 5.h,
        ),
        Text(item.title,
            style: GoogleFonts.nunitoSans(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff999999)))
      ],
    ),
  );
}

Widget listOfGridItem(context, {required GridHomeItem item}) {
  return Padding(
    padding: const EdgeInsets.all(0.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: InkWell(
            onTap: () => Navigator.pushNamed(context, RoutesName.productScreen),
            child: Container(
              height: 200.h,
              width: 157.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                // border: Border.all(
                //   color: Colors.black,
                //   width: 8,
                // ),
                image: DecorationImage(
                  image: AssetImage(
                    // Image.asset(
                      item.mainImgUrl,
                      // fit: BoxFit.fill,
                    ),
                  fit: BoxFit.fill,
                  ),
                ),
              ),
          ),
            // child: Image.asset(
            //   item.mainImgUrl,
            //   fit: BoxFit.fill,
            // ),
          ),
        // ),
        // Positioned(
        //   right: 10.w,
        //   bottom: 10.h,
        //   child: Container(
        //     height: 40.h,
        //     width: 40.w,
        //     decoration: BoxDecoration(
        //       color: Colors.grey.withOpacity(0.4),
        //       borderRadius: BorderRadius.circular(8.0.r),
        //     ),
        //     child: const Icon(
        //       Icons.shopping_bag_outlined,
        //       color: Colors.white,
        //     ),
        //   ),
        // ),
        // SizedBox(
        //   height: 10.h,
        // ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          item.title,
          style: GoogleFonts.nunitoSans(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xff606060),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          item.price,
          style: GoogleFonts.nunitoSans(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
            color: const Color(0xff303030),
          ),
        )
      ],
    ),
  );

  // return Column(
  //   crossAxisAlignment: CrossAxisAlignment.start,
  //   children: [
  //     Expanded(
  //       child: ClipRRect(
  //         child: Image.asset(
  //           item.mainImgUrl,
  //           fit: BoxFit.cover,
  //            height: 257.h,
  //         ),
  //       ),
  //     ),
  //     // Positioned(
  //     //   right: 10.w,
  //     //   bottom: 10.h,
  //     //   child: Container(
  //     //     height: 40.h,
  //     //     width: 40.w,
  //     //     decoration: BoxDecoration(
  //     //       color: Colors.grey.withOpacity(0.4),
  //     //       borderRadius: BorderRadius.circular(8.0.r),
  //     //     ),
  //     //     child: const Icon(
  //     //       Icons.shopping_bag_outlined,
  //     //       color: Colors.white,
  //     //     ),
  //     //   ),
  //     // ),
  //     SizedBox(
  //       height: 10.h,
  //     ),
  //     Text(
  //       item.title,
  //       style: GoogleFonts.nunitoSans(
  //         fontSize: 14.sp,
  //         fontWeight: FontWeight.w400,
  //         color: const Color(0xff606060),
  //       ),
  //     ),
  //     SizedBox(
  //       height: 5.h,
  //     ),
  //     Text(
  //       item.price,
  //       style: GoogleFonts.nunitoSans(
  //         fontSize: 14.sp,
  //         fontWeight: FontWeight.w700,
  //         color: const Color(0xff303030),
  //       ),
  //     )
  //   ],
  // );
}
