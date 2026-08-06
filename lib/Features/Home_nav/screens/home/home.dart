import 'package:flutter/material.dart';
import 'package:retail_app/Features/Home_nav/screens/home/product_card.dart';

import '../../../../Helpers/app_assets.dart';
import '../../../../Helpers/app_colors.dart';
import '../../../../Helpers/app_text.dart';
import '../../../../Helpers/text_style.dart';
import '../../view.dart';
import 'category_item.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  static const List<Map<String, dynamic>> categories = [
    {'title': 'Fruits', 'image': AppAssets.grapes, 'color': Color(0xffEDD0FF)},
    {
      'title': 'Vegetables',
      'image': AppAssets.orange,
      'color': Color(0xffFFD9BA),
    },
    {'title': 'Meat', 'image': AppAssets.meat, 'color': Color(0xffFACCCC)},
    {'title': 'Fish', 'image': AppAssets.fish, 'color': Color(0xffFBC1BD)},
  ];

  static const List<Map<String, String>> products = [
    {'name': 'Red Apple', 'image': AppAssets.apple, 'price': r'$4.99'},
    {'name': 'Banana', 'image': AppAssets.banana, 'price': r'$5.99'},
    {'name': 'Orange', 'image': AppAssets.orange, 'price': r'$3.99'},
    {'name': 'Fresh Meat', 'image': AppAssets.meat, 'price': r'$12.99'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenGreyColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                AppAssets.banner,
                height: 140,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            const _SectionHeader(title: 'Categories'),
            const SizedBox(height: 10),
            SizedBox(
              height: 128,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final item = categories[index];

                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: CategoryItem(
                      title: item['title'] as String,
                      imagePath: item['image'] as String,
                      bgColor: item['color'] as Color,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 14),
            const _SectionHeader(title: 'Popular Deals'),
            const SizedBox(height: 12),
            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final item = products[index];

                  return ProductCard(
                    name: item['name']!,
                    imagePath: item['image']!,
                    price: item['price']!,
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppText(title, style: AppTextStyle.sectionTitle),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const HomeNav(initialIndex: 1)),
            );
          },
          child: const AppText('See All', style: AppTextStyle.orange15),
        ),
      ],
    );
  }
}
