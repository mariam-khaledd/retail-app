import 'package:flutter/material.dart';

import '../Helpers/app_assets.dart';
import '../Helpers/app_button.dart';
import '../Helpers/app_colors.dart';
import '../Helpers/app_form_field.dart';
import '../Helpers/app_text.dart';
import '../Helpers/text_style.dart';
import 'Home_nav/view.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,

      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        centerTitle: true,

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.primaryColor),
        ),

        title: const AppText('Sign Up', style: AppTextStyle.primary24),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 10),

              Image.asset(AppAssets.signIn, height: 120),

              const SizedBox(height: 14),

              const AppText(
                'Please enter your information to\ncreate an account.',
                style: AppTextStyle.heading,
              ),

              const SizedBox(height: 14),

              const AppFormField(hintText: 'Email'),

              const SizedBox(height: 12),

              const AppFormField(hintText: 'Password', obscureText: true),

              const SizedBox(height: 12),

              const AppFormField(
                hintText: 'Confirm Password',
                obscureText: true,
              ),

              const SizedBox(height: 14),

              AppButton(
                text: 'Sign Up',
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeNav()),
                  );
                },
              ),

              const SizedBox(height: 14),
            ],
          ),
        ),
      ),
    );
  }
}
