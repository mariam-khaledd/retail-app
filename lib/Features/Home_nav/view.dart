import 'package:flutter/material.dart';

import '../../Helpers/app_colors.dart';
import 'screens/cart/cart.dart';
import 'screens/explore/categories.dart';
import 'screens/home/home.dart';
import 'screens/orders/view.dart';
import 'screens/profile/view.dart';

class HomeNav extends StatefulWidget {
  final int initialIndex;

  const HomeNav({super.key, this.initialIndex = 0});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.initialIndex;
  }

  final List<Widget> screens = const [
    HomePageScreen(),
    CategoriesScreen(),
    CartScreen(),
    OrdersScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(24),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 15,
                  offset: const Offset(0, -3),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(24),
              ),
              child: BottomNavigationBar(
                currentIndex: currentIndex,
                backgroundColor: AppColors.whiteColor,
                type: BottomNavigationBarType.fixed,

                elevation: 0,

                selectedItemColor: AppColors.primaryColor,
                unselectedItemColor: AppColors.darkBrownColor,

                selectedFontSize: 13,
                unselectedFontSize: 12,

                selectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                ),

                unselectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),

                iconSize: 28,

                showSelectedLabels: true,
                showUnselectedLabels: true,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Shop",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.travel_explore_outlined),
            activeIcon: Icon(Icons.travel_explore),
            label: "Explore",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            activeIcon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.storefront_outlined),
            activeIcon: Icon(Icons.storefront_rounded),
            label: "Orders",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: "Account",
          ),
        ],
      ),
            ),
        )
    );
  }
}
