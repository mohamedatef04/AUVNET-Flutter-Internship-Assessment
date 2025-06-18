import 'package:auvnet_internship_task/features/home/presentation/views/widgets/main_home_view_body.dart';
import 'package:flutter/material.dart';

class MainHomeView extends StatelessWidget {
  const MainHomeView({super.key});
  static const routeName = '/main-home-view';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: MainHomeViewBody());
  }
}
