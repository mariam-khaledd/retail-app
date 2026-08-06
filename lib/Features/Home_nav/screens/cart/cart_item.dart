import 'package:flutter/material.dart';

import '../../../../Helpers/app_colors.dart';
import '../../../../Helpers/app_price_text.dart';
import '../../../../Helpers/app_text.dart';
import '../../../../Helpers/text_style.dart';
import 'counter.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({
    super.key,
    required this.name,
    required this.image,
    required this.price,
    required this.unit,
    required this.onDismissed,
  });

  final String name;
  final String image;
  final String price;
  final String unit;
  final DismissDirectionCallback onDismissed;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(name),
      direction: DismissDirection.endToStart,

      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 25),
        color: AppColors.redColor,
        child: const Icon(Icons.delete, color: Colors.white, size: 30),
      ),

      onDismissed: onDismissed,

      child: SizedBox(
        height: 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            children: [
              Image.asset(image, width: 60, height: 60, fit: BoxFit.contain),

              const SizedBox(width: 15),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(name, style: AppTextStyle.brown18Bold),

                    const SizedBox(height: 10),

                    const Counter(),
                  ],
                ),
              ),

              AppPriceText(price: price, unit: unit),
            ],
          ),
        ),
      ),
    );
  }
}
