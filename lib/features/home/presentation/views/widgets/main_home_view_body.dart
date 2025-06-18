import 'package:auvnet_internship_task/core/widgets/custom_nav_bar.dart';
import 'package:auvnet_internship_task/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class MainHomeViewBody extends StatefulWidget {
  const MainHomeViewBody({super.key});

  @override
  State<MainHomeViewBody> createState() => _MainHomeViewBodyState();
}

class _MainHomeViewBodyState extends State<MainHomeViewBody> {
  List<Widget> screens = [const HomeView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[0],
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
