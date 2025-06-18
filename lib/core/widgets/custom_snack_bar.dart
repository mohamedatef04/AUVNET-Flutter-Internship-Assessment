import 'package:auvnet_internship_task/core/styles/app_styles.dart';
import 'package:flutter/material.dart';

void customSnackBar(
  BuildContext context, {
  required String message,
  required Color color,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 1),
      content: Text(message, style: AppStyles.mediumWhite14),
      backgroundColor: color,
    ),
  );
}
