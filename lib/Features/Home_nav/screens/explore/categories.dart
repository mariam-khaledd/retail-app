import 'package:flutter/material.dart';

import '../../../../Helpers/app_assets.dart';
import '../../../../Helpers/app_colors.dart';
import '../../../../Helpers/app_search_field.dart';
import '../../../../Helpers/app_text.dart';
import '../../../../Helpers/text_style.dart';

class Category {
  final String title;
  final String image;
  final Color backgroundColor;

  const Category({
    required this.title,
    required this.image,
    required this.backgroundColor,
  });
}

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  static const List<Category> categories = [
    Category(
      title: "Fruits",
      image: AppAssets.grapes,
      backgroundColor: Color(0xffE9D4FF),
    ),
    Category(
      title: "Vegetables",
      image: AppAssets.orange,
      backgroundColor: Color(0xffFFDCC1),
    ),
    Category(
      title: "Meat",
      image: AppAssets.meat,
      backgroundColor: Color(0xffFFD4D7),
    ),
    Category(
      title: "Fish",
      image: AppAssets.fish,
      backgroundColor: Color(0xffFFCBCB),
    ),
    Category(
      title: "Sea food",
      image: AppAssets.seafood,
      backgroundColor: Color(0xffFFE08D),
    ),
    Category(
      title: "Juice",
      image: AppAssets.juice,
      backgroundColor: Color(0xffDDF3C9),
    ),
    Category(
      title: "Egg & Milk",
      image: AppAssets.milk,
      backgroundColor: Color(0xffD7F0FF),
    ),
    Category(
      title: "Ice cream",
      image: AppAssets.iceCream,
      backgroundColor: Color(0xffF9D5F6),
    ),
    Category(
      title: "Cake",
      image: AppAssets.cake,
      backgroundColor: Color(0xffFFD39C),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),

              const AppText("Categories", style: AppTextStyle.screenTitle),

              const SizedBox(height: 25),

              const AppSearchField(),

              const SizedBox(height: 32),

              Expanded(
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: categories.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.72,
                  ),
                  itemBuilder: (context, index) {
                    final category = categories[index];

                    return Column(
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            color: category.backgroundColor,
                            shape: BoxShape.circle,
                          ),
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 60,
                            height: 60,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Image.asset(category.image),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        AppText(
                          category.title,
                          textAlign: TextAlign.center,
                          style: AppTextStyle.brown15,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
