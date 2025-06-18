import 'package:auvnet_internship_task/core/services/supabase_auth_service.dart';
import 'package:auvnet_internship_task/core/styles/app_colors.dart';
import 'package:auvnet_internship_task/core/utils/assets.dart';
import 'package:auvnet_internship_task/features/home/presentation/views/main_home_view.dart';
import 'package:auvnet_internship_task/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then((value) async {
      bool isExsit = await SupabaseAuthService().isExsit();
      if (isExsit) {
        GoRouter.of(context).pushReplacement(MainHomeView.routeName);
      } else {
        GoRouter.of(context).pushReplacement(OnboardingView.routeName);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 336.w,
              height: 336.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border(
                  right: BorderSide(color: AppColors.yellowColor, width: 1.w),
                ),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(Assets.imagesLogo),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
