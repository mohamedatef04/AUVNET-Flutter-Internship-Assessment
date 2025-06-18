import 'package:auvnet_internship_task/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CustomPasswordTextField extends StatefulWidget {
  const CustomPasswordTextField({super.key, required this.passwordController});

  final TextEditingController passwordController;

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      isObsecure: isObsecure,
      controller: widget.passwordController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your password';
        }
        return null;
      },
      hintText: 'paassword',
      prefixIcon: const Icon(Icons.lock_outline),
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            isObsecure = !isObsecure;
          });
        },
        icon: isObsecure
            ? const Icon(Icons.visibility_off)
            : const Icon(Icons.visibility),
      ),
    );
  }
}
