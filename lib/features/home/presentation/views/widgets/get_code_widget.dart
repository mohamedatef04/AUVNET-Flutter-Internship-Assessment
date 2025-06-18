import 'package:auvnet_internship_task/core/styles/app_colors.dart';
import 'package:auvnet_internship_task/core/styles/app_styles.dart';
import 'package:auvnet_internship_task/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetCodeWidget extends StatelessWidget {
  const GetCodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),

      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 89.h,
        decoration: BoxDecoration(
          color: AppColors.wightColor,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 15.w),
          child: Row(
            spacing: 5.w,
            children: [
              Stack(
                children: [
                  Image.asset(Assets.imagesCustomShape, width: 80.w),
                  Positioned(
                    bottom: 20.h,
                    right: 32.w,

                    child: Image.asset(Assets.imagesNawelShape, width: 24.w),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Got a code !',
                    style: AppStyles.boldDarkBlack12.copyWith(fontSize: 14.sp),
                  ),
                  Text(
                    'Add your code and save on your\norder',
                    style: AppStyles.mediumGrey10,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
