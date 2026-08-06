import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppFormField extends StatelessWidget {
  const AppFormField({
    super.key,
    required this.hintText,
    this.obscureText = false,
  });

  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 13,
        ),
        suffixIcon: obscureText
            ? const Icon(
                Icons.remove_red_eye_outlined,
                color: AppColors.primaryColor,
              )
            : null,
        filled: true,
        fillColor: AppColors.greyColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
