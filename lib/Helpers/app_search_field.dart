import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppSearchField extends StatelessWidget {
  const AppSearchField({super.key, this.hintText = 'Search'});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: const Icon(Icons.search, size: 30, color: AppColors.darkBrownColor,),
        filled: true,
        fillColor: AppColors.greyColor,
        hintStyle: TextStyle(color: AppColors.darkBrownColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
