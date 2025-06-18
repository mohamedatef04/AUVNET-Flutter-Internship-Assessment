import 'dart:io';

import 'package:auvnet_internship_task/core/styles/app_colors.dart';
import 'package:auvnet_internship_task/core/styles/app_styles.dart';
import 'package:auvnet_internship_task/core/widgets/custom_snack_bar.dart';
import 'package:auvnet_internship_task/features/auth/presentation/managers/blocs/signup%20bloc/sign_up_bloc.dart';
import 'package:auvnet_internship_task/features/auth/presentation/views/widgets/custom_email_text_field.dart';
import 'package:auvnet_internship_task/features/auth/presentation/views/widgets/custom_header_logo.dart';
import 'package:auvnet_internship_task/features/auth/presentation/views/widgets/custom_name_text_field.dart';
import 'package:auvnet_internship_task/features/auth/presentation/views/widgets/custom_password_text_field.dart';
import 'package:auvnet_internship_task/features/auth/presentation/views/widgets/image_upload_container.dart';
import 'package:auvnet_internship_task/features/onboarding/presentation/views/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? imageName;
  File? pickedImage;

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
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 30.h),
              child: Column(
                spacing: 10.h,
                children: [
                  const CustomHeaderLogo(),
                  ImageUploadContainer(
                    onImagePicked: (value) {
                      setState(() {
                        pickedImage = value;
                        imageName = pickedImage!.path.split('/').last;
                      });
                    },
                  ),
                  CustomNameTextField(nameController: nameController),
                  CustomEmailTextField(emailController: emailController),
                  CustomPasswordTextField(
                    passwordController: passwordController,
                  ),
                  SizedBox(height: 3.h),
                  CustomElevatedButton(
                    width: MediaQuery.sizeOf(context).width,
                    height: 50.h,
                    text: 'Sign Up',
                    style: AppStyles.mediumWhite14,
                    onPressed: () {
                      if (formKey.currentState!.validate() &&
                          pickedImage != null) {
                        formKey.currentState!.save();

                        context.read<SignUpBloc>().add(
                          SignUpWithEmailAndPasswordEvent(
                            email: emailController.text.trim(),
                            password: passwordController.text.trim(),
                            name: nameController.text.trim(),
                            image: pickedImage!,
                            path: imageName!,
                            profileImageUrl:
                                'https://daysutvibeazhmrpcmhi.supabase.co/storage/v1/object/public/usersprofileimages//$imageName',
                          ),
                        );
                      } else {
                        setState(() {
                          autovalidateMode = AutovalidateMode.always;
                        });
                        customSnackBar(
                          context,
                          message: 'Please uplaod an image',
                          color: AppColors.blackColor,
                        );
                      }
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).pop();
                    },
                    child: Text(
                      'Log In to your account',
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
