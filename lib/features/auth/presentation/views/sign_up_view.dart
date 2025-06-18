import 'package:auvnet_internship_task/core/services/get_it_service.dart';
import 'package:auvnet_internship_task/core/styles/app_colors.dart';
import 'package:auvnet_internship_task/core/widgets/custom_snack_bar.dart';
import 'package:auvnet_internship_task/features/auth/data/repos/auth_repo_impl.dart';
import 'package:auvnet_internship_task/features/auth/presentation/managers/blocs/signup%20bloc/sign_up_bloc.dart';
import 'package:auvnet_internship_task/features/auth/presentation/managers/blocs/signup%20bloc/sign_up_state.dart';
import 'package:auvnet_internship_task/features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = '/sign-up-view';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SignUpBloc(getIt.get<AuthRepoImpl>()),
        ),
      ],
      child: BlocConsumer<SignUpBloc, SignUpState>(
        listener: (context, state) {
          if (state.isSuccess) {
            customSnackBar(
              context,
              message: 'Account created successfully',
              color: AppColors.blackColor,
            );
            GoRouter.of(context).pop();
          } else if (state.errorMessage != null) {
            customSnackBar(
              context,
              message: state.errorMessage!,
              color: AppColors.blackColor,
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: ModalProgressHUD(
              inAsyncCall: state.isLoading,
              child: const SignUpViewBody(),
            ),
          );
        },
      ),
    );
  }
}
