import 'package:auvnet_internship_task/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHeaderLogo extends StatelessWidget {
  const CustomHeaderLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 336.w,
      height: 336.h,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.imagesLogo),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
