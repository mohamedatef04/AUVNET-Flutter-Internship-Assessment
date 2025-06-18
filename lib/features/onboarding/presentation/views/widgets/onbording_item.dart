import 'package:auvnet_internship_task/core/styles/app_styles.dart';
import 'package:auvnet_internship_task/core/utils/assets.dart';
import 'package:auvnet_internship_task/features/auth/presentation/views/log_in_view.dart';
import 'package:auvnet_internship_task/features/onboarding/presentation/views/widgets/custom_elevated_button.dart';
import 'package:auvnet_internship_task/features/onboarding/presentation/views/widgets/custom_header_shape.dart';
import 'package:auvnet_internship_task/features/onboarding/presentation/views/widgets/custom_onboarding_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({
    super.key,
    required this.title,
    required this.subtitle,
    this.onTap,
  });
  final String title;
  final String subtitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomOnBoardingHeaderWidget(),
        Positioned(
          bottom: 0,
          right: 0,
          left: 110.w,
          child: Image.asset(Assets.imagesOnboardingShadow),
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 12.h,
          children: [
            const CustomHeaderShape(),
            SizedBox(height: 40.h),

            Text(title, style: AppStyles.mediumBlack28),

            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: Text(
                subtitle,

                textAlign: TextAlign.center,

                style: AppStyles.regularGrey14.copyWith(height: 1.5.h),
              ),
            ),
            SizedBox(height: 40.h),

            CustomElevatedButton(
              width: 295.w,
              height: 54.h,
              text: 'get started',
              style: AppStyles.mediumWhite18,
              onPressed: () {
                GoRouter.of(context).pushReplacement(LogInView.routeName);
              },
            ),

            // Next text
            GestureDetector(
              onTap: onTap,
              child: Text('next', style: AppStyles.regularGrey14),
            ),
          ],
        ),
      ],
    );
  }
}
