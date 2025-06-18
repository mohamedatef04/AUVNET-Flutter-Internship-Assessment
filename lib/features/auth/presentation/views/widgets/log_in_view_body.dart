import 'package:auvnet_internship_task/core/styles/app_styles.dart';
import 'package:auvnet_internship_task/features/auth/presentation/managers/blocs/login%20bloc/log_in_bloc.dart';
import 'package:auvnet_internship_task/features/auth/presentation/views/sign_up_view.dart';
import 'package:auvnet_internship_task/features/auth/presentation/views/widgets/custom_email_text_field.dart';
import 'package:auvnet_internship_task/features/auth/presentation/views/widgets/custom_header_logo.dart';
import 'package:auvnet_internship_task/features/auth/presentation/views/widgets/custom_password_text_field.dart';
import 'package:auvnet_internship_task/features/onboarding/presentation/views/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LogInViewBody extends StatefulWidget {
  const LogInViewBody({super.key});

  @override
  State<LogInViewBody> createState() => _LogInViewBodyState();
}

class _LogInViewBodyState extends State<LogInViewBody> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 65.h),
              child: Column(
                spacing: 20.h,
                children: [
                  const CustomHeaderLogo(),
                  CustomEmailTextField(emailController: emailController),
                  CustomPasswordTextField(
                    passwordController: passwordController,
                  ),
                  CustomElevatedButton(
                    width: MediaQuery.sizeOf(context).width,
                    height: 50.h,
                    text: 'Log In',
                    style: AppStyles.mediumWhite14,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        context.read<LogInBloc>().add(
                          LogInWithEmailAndPasswordEvent(
                            email: emailController.text.trim(),
                            password: passwordController.text.trim(),
                          ),
                        );
                      } else {
                        setState(() {
                          autovalidateMode = AutovalidateMode.always;
                        });
                      }
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(SignUpView.routeName);
                    },
                    child: Text(
                      'Create an account',
                      style: AppStyles.boldBlue14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
