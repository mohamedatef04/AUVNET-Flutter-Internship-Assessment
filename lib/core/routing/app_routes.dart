import 'package:auvnet_internship_task/features/auth/presentation/views/log_in_view.dart';
import 'package:auvnet_internship_task/features/auth/presentation/views/sign_up_view.dart';
import 'package:auvnet_internship_task/features/home/presentation/views/home_view.dart';
import 'package:auvnet_internship_task/features/home/presentation/views/main_home_view.dart';
import 'package:auvnet_internship_task/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:auvnet_internship_task/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(
      path: OnboardingView.routeName,
      builder: (context, state) => const OnboardingView(),
    ),
    GoRoute(
      path: LogInView.routeName,
      builder: (context, state) => const LogInView(),
    ),
    GoRoute(
      path: SignUpView.routeName,
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: MainHomeView.routeName,
      builder: (context, state) => const MainHomeView(),
    ),
    GoRoute(
      path: HomeView.routeName,
      builder: (context, state) => const HomeView(),
    ),
  ],
);
