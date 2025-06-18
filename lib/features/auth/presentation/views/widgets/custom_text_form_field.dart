import 'package:auvnet_internship_task/core/styles/app_colors.dart';
import 'package:auvnet_internship_task/core/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.controller,
    this.validator,
    this.isObsecure = false,
    this.suffixIcon,
  });
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  final bool isObsecure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: TextFormField(
        obscureText: isObsecure,
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 17.h),
          hintText: hintText,
          hintStyle: AppStyles.lightDarkGrey14,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          fillColor: AppColors.verylightWightColor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
