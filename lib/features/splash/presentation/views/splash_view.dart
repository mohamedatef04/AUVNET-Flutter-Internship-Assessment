import 'package:auvnet_internship_task/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SplashViewBody());
  }
}
