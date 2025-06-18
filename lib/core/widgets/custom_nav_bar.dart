import 'package:auvnet_internship_task/core/styles/app_colors.dart';
import 'package:auvnet_internship_task/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: Colors.grey[800],
      selectedLabelStyle: const TextStyle(color: AppColors.primaryColor),
      items: [
        BottomNavigationBarItem(
          icon: Column(
            spacing: 8.h,
            children: [
              Visibility(
                visible: _selectedIndex == 0 ? true : false,
                child: Image.asset(Assets.imagesNavShape),
              ),

              Image.asset(Assets.imagesNavHome, width: 24.w),
            ],
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Column(
            spacing: 8.h,
            children: [
              Visibility(
                visible: _selectedIndex == 1 ? true : false,
                child: Image.asset(Assets.imagesNavShape),
              ),
              Image.asset(Assets.imagesCategoriesShape, width: 24.w),
            ],
          ),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          icon: Column(
            spacing: 8.h,
            children: [
              Visibility(
                visible: _selectedIndex == 2 ? true : false,
                child: Image.asset(Assets.imagesNavShape),
              ),
              Image.asset(Assets.imagesDeliverShape, width: 24.w),
            ],
          ),
          label: 'Deliver',
        ),
        BottomNavigationBarItem(
          icon: Column(
            spacing: 8.h,
            children: [
              Visibility(
                visible: _selectedIndex == 3 ? true : false,
                child: Image.asset(Assets.imagesNavShape),
              ),
              Image.asset(Assets.imagesCartShape, width: 24.w),
            ],
          ),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Column(
            spacing: 8.h,
            children: [
              Visibility(
                visible: _selectedIndex == 4 ? true : false,
                child: Image.asset(Assets.imagesNavShape),
              ),
              Image.asset(Assets.imagesProfileShape, width: 24.w),
            ],
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
