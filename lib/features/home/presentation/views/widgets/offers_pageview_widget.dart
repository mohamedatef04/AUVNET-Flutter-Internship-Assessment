import 'package:auvnet_internship_task/features/home/presentation/views/widgets/custom_offers_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OffersPageviewWidget extends StatefulWidget {
  const OffersPageviewWidget({super.key});

  @override
  State<OffersPageviewWidget> createState() => _OffersPageviewWidgetState();
}

class _OffersPageviewWidgetState extends State<OffersPageviewWidget> {
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      children: [
        SizedBox(
          height: 180.h,
          child: PageView(
            controller: pageController,
            children: const [
              CustomOffersContainer(),
              CustomOffersContainer(),
              CustomOffersContainer(),
              CustomOffersContainer(),
              CustomOffersContainer(),
              CustomOffersContainer(),
            ],
          ),
        ),
        SmoothPageIndicator(controller: pageController, count: 6),
      ],
    );
  }
}
