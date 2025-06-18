import 'package:auvnet_internship_task/features/onboarding/presentation/views/widgets/onbording_item.dart';
import 'package:flutter/material.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: PageView(
          controller: controller,
          children: [
            OnBoardingItem(
              title: 'all-in-one delivery ',
              subtitle:
                  'Order groceries, medicines, and meals\ndelivered straight to your door',
              onTap: () => controller.nextPage(
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
              ),
            ),
            OnBoardingItem(
              title: 'User-to-User Delivery',
              subtitle:
                  'Send or receive items from other users quickly\nand easily',
              onTap: () => controller.nextPage(
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
              ),
            ),

            OnBoardingItem(
              title: 'Sales & Discounts',
              subtitle: 'Discover exclusive sales and deals every day',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
