import 'package:auvnet_internship_task/features/onboarding/presentation/views/widgets/onboarding_view_body.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  static const routeName = '/onboarding-view';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: OnboardingViewBody());
  }
}
