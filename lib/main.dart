import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/route/route_pages.dart';
import 'package:furniture_app/route/routes.dart';
import 'package:furniture_app/screens/add_shippingaddress_screen.dart';
import 'package:furniture_app/screens/my_review_screen.dart';
import 'package:furniture_app/screens/payment_method_screen.dart';
import 'package:furniture_app/screens/setting_screen.dart';
import 'package:furniture_app/screens/shipping_address_screen.dart';

import 'screens/add_payment_screen.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(375 , 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          initialRoute: RoutesName.boardingScreen,
          onGenerateRoute: Routes.generateRoute,
        );
      },

    );
  }
}