import 'package:auvnet_internship_task/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOffersContainer extends StatelessWidget {
  const CustomOffersContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 180.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        image: const DecorationImage(
          image: AssetImage(Assets.imagesOffer),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
