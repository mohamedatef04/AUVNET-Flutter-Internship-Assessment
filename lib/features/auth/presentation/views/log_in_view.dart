import 'package:auvnet_internship_task/core/services/get_it_service.dart';
import 'package:auvnet_internship_task/core/styles/app_colors.dart';
import 'package:auvnet_internship_task/core/widgets/custom_snack_bar.dart';
import 'package:auvnet_internship_task/features/auth/data/repos/auth_repo_impl.dart';
import 'package:auvnet_internship_task/features/auth/presentation/managers/blocs/login%20bloc/log_in_bloc.dart';
import 'package:auvnet_internship_task/features/auth/presentation/managers/blocs/login%20bloc/log_in_state.dart';
import 'package:auvnet_internship_task/features/auth/presentation/views/widgets/log_in_view_body.dart';
import 'package:auvnet_internship_task/features/home/presentation/views/main_home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});
  static const routeName = '/log-in-view';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LogInBloc(getIt.get<AuthRepoImpl>()),
      child: BlocConsumer<LogInBloc, LogInState>(
        listener: (context, state) {
          if (state.isSuccess) {
            GoRouter.of(context).pushReplacement(MainHomeView.routeName);
          } else if (state.errorMessage != null) {
            customSnackBar(
              context,
              message: 'Wrong email or password',
              color: AppColors.blackColor,
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: ModalProgressHUD(
              inAsyncCall: state.isLoading,

              child: const LogInViewBody(),
            ),
          );
        },
      ),
    );
  }
}
