import 'package:flutter/material.dart';

import '../Helpers/app_assets.dart';
import '../Helpers/app_button.dart';
import '../Helpers/app_colors.dart';
import '../Helpers/app_outlined_button.dart';
import '../Helpers/app_text.dart';
import '../Helpers/text_style.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 50),
            Image.asset(AppAssets.illustration, height: 400),
            const SizedBox(height: 30),
            const AppText(
              'Welcome to our app',
              textAlign: TextAlign.center,
              style: AppTextStyle.onboardingTitle,
            ),
            const SizedBox(height: 15),
            const AppText(
              'Shop online and get groceries delivered\nfrom stores to your home in as fast as 1 hour',
              textAlign: TextAlign.center,
              style: AppTextStyle.grey18,
            ),
            const SizedBox(height: 40),
            AppButton(
              text: 'Sign up',
              onPressed: () {},
              backgroundColor: AppColors.onboardingPrimaryColor,
              textStyle: AppTextStyle.white20button.copyWith(fontSize: 14),
            ),
            const SizedBox(height: 20),
            AppOutlinedButton(
              text: 'Sign in',
              onPressed: () {},
              borderColor: AppColors.onboardingPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
