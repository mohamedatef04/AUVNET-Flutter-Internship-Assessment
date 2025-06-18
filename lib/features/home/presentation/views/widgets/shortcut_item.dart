import 'package:auvnet_internship_task/core/styles/app_colors.dart';
import 'package:auvnet_internship_task/core/styles/app_styles.dart';
import 'package:auvnet_internship_task/features/home/domain/entites/shortcut_item_intity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShortcutItem extends StatelessWidget {
  const ShortcutItem({super.key, required this.shortcutItemIntity});
  final ShortcutItemIntity shortcutItemIntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: Column(
        spacing: 10.h,
        children: [
          Container(
            width: 65.w,
            height: 65.h,
            decoration: BoxDecoration(
              color: AppColors.lightYellowColor,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Center(child: shortcutItemIntity.icon),
          ),
          Text(
            shortcutItemIntity.title,
            textAlign: TextAlign.center,
            style: AppStyles.medium14DarkBlack,
          ),
        ],
      ),
    );
  }
}
