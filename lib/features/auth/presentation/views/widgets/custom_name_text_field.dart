import 'package:auvnet_internship_task/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CustomNameTextField extends StatelessWidget {
  const CustomNameTextField({super.key, required this.nameController});

  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: nameController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your name';
        }
        return null;
      },
      hintText: 'name',
      prefixIcon: const Icon(Icons.person),
    );
  }
}
