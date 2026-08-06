import 'package:flutter/material.dart';
import 'package:retail_app/Helpers/app_colors.dart';
import 'package:retail_app/Helpers/app_text.dart';
import 'package:retail_app/Helpers/text_style.dart';

class ProfileListTileItem extends StatelessWidget {
  const ProfileListTileItem({
    super.key,
    required this.title,
    required this.icon,
    this.showArrow = true,
    this.onTap,
  });

  final String title;
  final IconData icon;
  final bool showArrow;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,

      leading: Icon(
        icon,
        color: AppColors.darkBrownColor,
        fontWeight: FontWeight.bold,
      ),

      title: AppText(
        title,
        style: AppTextStyle.black16.copyWith(fontWeight: FontWeight.bold, color: AppColors.darkBrownColor),
      ),

      trailing: showArrow
          ? const Icon(
              Icons.keyboard_arrow_right,
              color: AppColors.darkBrownColor,
              fontWeight: FontWeight.bold,
            )
          : null,
    );
  }
}
