import 'package:auvnet_internship_task/core/styles/app_colors.dart';
import 'package:auvnet_internship_task/core/styles/app_styles.dart';
import 'package:auvnet_internship_task/core/utils/assets.dart';
import 'package:auvnet_internship_task/features/home/domain/entites/resturant_item_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResturantsItem extends StatelessWidget {
  const ResturantsItem({super.key, required this.resturantItemEntity});
  final ResturantItemEntity resturantItemEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5.h,
      children: [
        Container(
          width: 80.w,
          height: 70.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(
              color: AppColors.lightWightGreyColor,
              width: 1.w,
            ),
          ),
          child: Center(
            child: Image.asset(resturantItemEntity.image, width: 70.w),
          ),
        ),
        SizedBox(
          child: Text(
            resturantItemEntity.title,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: AppStyles.medium14DarkBlack.copyWith(fontSize: 14.sp),
          ),
        ),
        Row(
          spacing: 5.w,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.imagesTimeIcon, width: 13.w),
            Text(
              resturantItemEntity.subtitle,
              style: AppStyles.mediumGrey10.copyWith(fontSize: 12.sp),
            ),
          ],
        ),
      ],
    );
  }
}
