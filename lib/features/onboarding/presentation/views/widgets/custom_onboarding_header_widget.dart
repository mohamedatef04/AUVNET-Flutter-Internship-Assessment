import 'package:auvnet_internship_task/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOnBoardingHeaderWidget extends StatelessWidget {
  const CustomOnBoardingHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 130.w,
      bottom: 490.h,
      child: Container(
        width: 342.w,
        height: 342.h,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesShape),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
