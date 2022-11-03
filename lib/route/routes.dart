import 'package:flutter/material.dart';
import 'package:furniture_app/route/route_pages.dart';
import 'package:furniture_app/screens/boarding_screen.dart';
import 'package:furniture_app/screens/card_screen.dart';
import 'package:furniture_app/screens/checkout_screen.dart';
import 'package:furniture_app/screens/congrats_screen.dart';
import 'package:furniture_app/screens/my_review_screen.dart';
import 'package:furniture_app/screens/order_screen.dart';
import 'package:furniture_app/screens/payment_method_screen.dart';
import 'package:furniture_app/screens/setting_screen.dart';
import 'package:furniture_app/screens/shipping_address_screen.dart';
import 'package:furniture_app/widget/bottom_navigation_bar.dart';

import '../screens/favorite.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/notification_screen.dart';
import '../screens/product_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/sign_up.dart';

class Routes {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.boardingScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const BoardingScreen());
      case RoutesName.loginScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen());
      case RoutesName.signUpScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignUpScreen());
      case RoutesName.homeScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen());
      case RoutesName.favoriteScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => FavoriteScreen());
      case RoutesName.notificationScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const NotificationScreen());
      case RoutesName.profileScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) =>  ProfileScreen());
      case RoutesName.bottomNavigationBar:
        return MaterialPageRoute(
            builder: (BuildContext context) => const bottomNavigationBar());
      case RoutesName.productScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ProductScreen());
      case RoutesName.cartScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => CartScreen());
      case RoutesName.checkoutScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => CheckOutScreen());
      case RoutesName.congratsScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const CongratsScreen());
      case RoutesName.orderScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const OrderScreen());
      case RoutesName.shippingAddressScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ShippingAddressScreen());
      case RoutesName.paymentMethodScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const PaymentMethodScreen());
      case RoutesName.myReviewScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const MyReviewScreen());
      case RoutesName.settingScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SettingScreen());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route Found'),
            ),
          );
        });
    }
  }
}
