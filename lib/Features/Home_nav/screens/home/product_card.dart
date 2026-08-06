import 'package:flutter/material.dart';

import '../../../../Helpers/app_colors.dart';
import '../../../../Helpers/app_text.dart';
import '../../../../Helpers/text_style.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final String price;

  const ProductCard({
    super.key,
    required this.name,
    required this.imagePath,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 118,
      margin: const EdgeInsets.only(right: 10, bottom: 4),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 4)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset(imagePath, height: 58)),
          const SizedBox(height: 6),
          AppText(
            name,
            style: AppTextStyle.brown18Bold.copyWith(
              color: AppColors.brownColor,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 3),
          const AppText("1kg, price", style: AppTextStyle.greyLabel),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(price, style: AppTextStyle.price22),
              const CircleAvatar(
                radius: 12,
                backgroundColor: AppColors.greenColor,
                child: Icon(Icons.add, color: AppColors.whiteColor, size: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
