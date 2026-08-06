import 'package:flutter/material.dart';

import 'text_style.dart';

class AppPriceText extends StatelessWidget {
  const AppPriceText({super.key, required this.price, required this.unit});

  final String price;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: price, style: AppTextStyle.brown18Bold),
          TextSpan(text: ' $unit', style: AppTextStyle.greyUnit),
        ],
      ),
    );
  }
}
