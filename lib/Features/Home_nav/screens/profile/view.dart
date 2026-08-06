import 'package:flutter/material.dart';
import 'package:retail_app/Helpers/app_colors.dart';
import 'package:retail_app/Helpers/app_text.dart';
import 'package:retail_app/Helpers/text_style.dart';
import 'profile_item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool notifications = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,

      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        centerTitle: true,
        title: const AppText("Profile", style: AppTextStyle.primary24),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),

            const ProfileListTileItem(
              title: "Edit Profile",
              icon: Icons.person_outline,
            ),

            const Divider(height: 1),

            const ProfileListTileItem(
              title: "Change Password",
              icon: Icons.lock_outline,
            ),

            const Divider(height: 1),

            const ProfileListTileItem(
              title: "My Cards",
              icon: Icons.credit_card_outlined,
            ),

            const SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: AppText(
                  "App Settings",
                  style: AppTextStyle.heading.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.darkBrownColor,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            SwitchListTile(
              value: notifications,
              onChanged: (value) {
                setState(() {
                  notifications = value;
                });
              },

              secondary: const Icon(
                Icons.notifications_outlined,
                color: AppColors.darkBrownColor,
              ),

              title: AppText(
                "Notifications",
                style: AppTextStyle.black16.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkBrownColor,
                ),
              ),

              activeThumbColor: AppColors.primaryColor,
              activeTrackColor: Colors.orange.shade200,
            ),

            const Divider(height: 1),

            ListTile(
              leading: const Icon(
                Icons.language_outlined,
                color: AppColors.darkBrownColor,
              ),

              title: AppText(
                "Language",
                style: AppTextStyle.black16.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkBrownColor,
                ),
              ),

              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppText(
                    "English",
                    style: AppTextStyle.black16.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.darkBrownColor,
                    ),
                  ),

                  const SizedBox(width: 5),

                  const Icon(
                    Icons.keyboard_arrow_right,
                    color: AppColors.brownColor,
                  ),
                ],
              ),
            ),

            const Divider(height: 1),

            const ProfileListTileItem(
              title: "Log Out",
              icon: Icons.logout,
              showArrow: false,
            ),
          ],
        ),
      ),
    );
  }
}
