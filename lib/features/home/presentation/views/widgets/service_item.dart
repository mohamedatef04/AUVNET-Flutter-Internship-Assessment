import 'package:auvnet_internship_task/core/styles/app_colors.dart';
import 'package:auvnet_internship_task/core/styles/app_styles.dart';
import 'package:auvnet_internship_task/features/home/domain/entites/service_item_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceItem extends StatelessWidget {
  const ServiceItem({super.key, required this.serviceItemEntity});
  final ServiceItemEntity serviceItemEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: Column(
        spacing: 3.h,
        children: [
          Container(
            width: 105.w,
            height: 70.h,
            decoration: BoxDecoration(
              color: AppColors.verylightWightColor,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Center(
              child: Image.asset(serviceItemEntity.image, width: 57.w),
            ),
          ),
          Container(
            width: 64.w,
            height: 16.h,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Center(
              child: Text(
                serviceItemEntity.offer,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: AppStyles.mediumWhite14.copyWith(fontSize: 12.sp),
              ),
            ),
          ),
          Text(
            serviceItemEntity.category,
            textAlign: TextAlign.center,
            style: AppStyles.medium14DarkBlack,
          ),
        ],
      ),
    );
  }
}
