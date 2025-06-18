import 'package:auvnet_internship_task/core/styles/app_styles.dart';
import 'package:auvnet_internship_task/features/home/presentation/views/widgets/custom_home_header_shape.dart';
import 'package:auvnet_internship_task/features/home/presentation/views/widgets/get_code_widget.dart';
import 'package:auvnet_internship_task/features/home/presentation/views/widgets/offers_pageview_widget.dart';
import 'package:auvnet_internship_task/features/home/presentation/views/widgets/popular_resturants_widget.dart';
import 'package:auvnet_internship_task/features/home/presentation/views/widgets/services_items_widget.dart';
import 'package:auvnet_internship_task/features/home/presentation/views/widgets/shortcuts_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomHomeHeaderShape(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      spacing: 20.h,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Services:',
                          style: AppStyles.boldDarkBlack12.copyWith(
                            fontSize: 20.sp,
                          ),
                        ),
                        const ServicesItemsWidget(),
                        const GetCodeWidget(),
                        Text(
                          'Shotcuts:',
                          style: AppStyles.boldDarkBlack12.copyWith(
                            fontSize: 20.sp,
                          ),
                        ),
                        const ShortcutsWidget(),
                        const OffersPageviewWidget(),
                        Text(
                          'Popular restaurants nearby:',
                          style: AppStyles.boldDarkBlack12.copyWith(
                            fontSize: 16.sp,
                          ),
                        ),
                        const PopularResturantsWidget(),

                        SizedBox(height: 40.h),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
