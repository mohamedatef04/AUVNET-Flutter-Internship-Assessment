import 'package:auvnet_internship_task/core/networking/supabase_constants.dart';
import 'package:auvnet_internship_task/core/routing/app_routes.dart';
import 'package:auvnet_internship_task/core/services/get_it_service.dart';
import 'package:auvnet_internship_task/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('localStorage');
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseAnonKey);
  setupGetIt();

  runApp(const InternshipTask());
}

class InternshipTask extends StatelessWidget {
  const InternshipTask({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.wightColor,
          brightness: Brightness.light,
          useMaterial3: false,
        ),
      ),
    );
  }
}
