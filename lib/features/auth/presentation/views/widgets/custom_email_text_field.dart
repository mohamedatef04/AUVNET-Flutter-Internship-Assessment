import 'package:auvnet_internship_task/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CustomEmailTextField extends StatelessWidget {
  const CustomEmailTextField({super.key, required this.emailController});

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email';
        } else if (!RegExp(
          r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
        ).hasMatch(value)) {
          return 'Please enter a valid email';
        }
        return null;
      },
      hintText: 'mail',
      prefixIcon: const Icon(Icons.email_outlined),
    );
  }
}
