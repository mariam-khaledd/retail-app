import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.borderColor = AppColors.primaryColor,
    this.textStyle,
  });

  final String text;
  final VoidCallback onPressed;
  final Color borderColor;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: borderColor, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: AppText(
          text,
          style:
              textStyle ??
              TextStyle(
                color: borderColor,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
