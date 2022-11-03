import 'package:flutter/material.dart';
import 'package:furniture_app/screens/favorite.dart';
import 'package:furniture_app/screens/home_screen.dart';
import 'package:furniture_app/screens/notification_screen.dart';
import 'package:furniture_app/screens/profile_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<bottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  @override
  void dispose() {
    _selectedIndex = 0;
    super.dispose();
  }

  void initState() {
    super.initState();
  }

  static var _selectedIndex = 0;

  static List<Widget> _widgetOption = <Widget>[
    HomeScreen(),
    FavoriteScreen(),
    NotificationScreen(),
   ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 12.sp,
        unselectedFontSize: 12.sp,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(size: 20.h.w),
        unselectedIconTheme: IconThemeData(size: 22.h.w),
        currentIndex: _selectedIndex,

        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            tooltip: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border_rounded),
            label: 'Favorite',
            tooltip: 'Favorite',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined),
              label: 'Notification',
              tooltip: 'Notification'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              label: 'profile',
              tooltip: 'profile'),
        ],
      ),
      body: _widgetOption.elementAt(_selectedIndex),

    );
  }
  // void _onTap(int index){
  //   _selectedIndex = index;
  //   setState(() {
  //
  //   });
  // }

}
