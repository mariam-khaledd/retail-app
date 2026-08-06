import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyle {
  AppTextStyle._();

  static const primary24 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryColor,
  );

  static const heading = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.brownColor,
  );

  static const onboardingTitle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.darkBrownColor,
  );

  static const screenTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );

  static const largeTitle = TextStyle(fontSize: 24);

  static const sectionTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.brownColor,
  );

  static const black16 = TextStyle(fontSize: 14, color: Colors.black);

  static const orange15 = TextStyle(
    fontSize: 13,
    color: AppColors.primaryColor,
  );

  static const orangeBold16 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );

  static const brown15 = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: AppColors.brownColor,
  );

  static const brown18Bold = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: AppColors.darkBrownColor,
  );

  static const grey18 = TextStyle(fontSize: 15, color: AppColors.hintColor);

  static const greyLabel = TextStyle(color: AppColors.hintColor);

  static const greyUnit = TextStyle(color: AppColors.hintColor, fontSize: 10);

  static const price22 = TextStyle(
    color: AppColors.primaryColor,
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  static const white20button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
