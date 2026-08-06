import 'package:flutter/material.dart';

import '../../../../Helpers/app_assets.dart';
import '../../../../Helpers/app_button.dart';
import '../../../../Helpers/app_colors.dart';
import '../../../../Helpers/app_text.dart';
import '../../../../Helpers/text_style.dart';
import 'cart_item.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final List<Map<String, dynamic>> items = [
    {"name": " Apple", "image": AppAssets.apple, "price": r"$80", "unit": "kg"},
    {
      "name": "Banana",
      "image": AppAssets.banana,
      "price": r"$90",
      "unit": "kg",
    },
    {
      "name": "Avocado ",
      "image": AppAssets.avocado,
      "price": r"$60",
      "unit": "st",
    },
    {
      "name": "Salmon",
      "image": AppAssets.salmon,
      "price": r"$50",
      "unit": "kg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,

      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const AppText("Cart", style: AppTextStyle.screenTitle),
                ],
              ),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView.separated(
                itemCount: items.length,
                separatorBuilder: (context, index) => const Divider(height: 1),

                itemBuilder: (context, index) {
                  final item = items[index];

                  return CartItemWidget(
                    name: item["name"] as String,
                    image: item["image"] as String,
                    price: item["price"] as String,
                    unit: item["unit"] as String,
                    onDismissed: (direction) {
                      setState(() {
                        items.removeAt(index);
                      });
                    },
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: AppButton(text: "CheckOut", onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
