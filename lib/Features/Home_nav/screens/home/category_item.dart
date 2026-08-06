import 'package:flutter/material.dart';

import '../../../../Helpers/app_text.dart';
import '../../../../Helpers/text_style.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color bgColor;

  const CategoryItem({
    super.key,
    required this.title,
    required this.imagePath,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: bgColor,
          child: Image.asset(imagePath, height: 40),
        ),
        const SizedBox(height: 8),
        AppText(title, style: AppTextStyle.brown15),
      ],
    );
  }
}
