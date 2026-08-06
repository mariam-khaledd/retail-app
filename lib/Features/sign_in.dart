import 'package:flutter/material.dart';
import 'package:retail_app/Features/Home_nav/view.dart';

import '../Helpers/app_assets.dart';
import '../Helpers/app_button.dart';
import '../Helpers/app_colors.dart';
import '../Helpers/app_form_field.dart';
import '../Helpers/app_text.dart';
import '../Helpers/text_style.dart';

import 'sign_up.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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

        title: const AppText('Sign In', style: AppTextStyle.primary24),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 10),

              Image.asset(AppAssets.signIn, height: 125),

              const SizedBox(height: 16),

              const AppText(
                'Enter your Email and\npassword to access your account',
                style: AppTextStyle.heading,
              ),

              const SizedBox(height: 14),

              const AppFormField(hintText: 'Email'),

              const SizedBox(height: 12),

              const AppFormField(hintText: 'Password', obscureText: true),

              const SizedBox(height: 10),

              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},

                  child: const AppText(
                    'Forgot Password',
                    style: AppTextStyle.orange15,
                  ),
                ),
              ),

              const SizedBox(height: 12),

              AppButton(
                text: 'Sign In',
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const HomeNav()),
                  );
                },
              ),

              const SizedBox(height: 14),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AppText(
                    "Don't have an account? ",
                    style: AppTextStyle.black16,
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const SignUp()),
                      );
                    },

                    child: const AppText(
                      'Sign Up',
                      style: AppTextStyle.orangeBold16,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 14),
            ],
          ),
        ),
      ),
    );
  }
}
