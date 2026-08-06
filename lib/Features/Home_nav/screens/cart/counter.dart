import 'package:flutter/material.dart';

import '../../../../Helpers/app_colors.dart';
import '../../../../Helpers/app_text.dart';
import '../../../../Helpers/text_style.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 90,
      padding: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: AppColors.lightGreyColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                if (counter == 0) {
                  return;
                }
                counter--;
              });
            },
            child: const IconForCounter(icon: Icons.remove),
          ),

          AppText(
            "$counter",
            style: AppTextStyle.brown18Bold.copyWith(fontSize: 13),
          ),

          GestureDetector(
            onTap: () {
              setState(() {
                counter++;
              });
            },
            child: const IconForCounter(icon: Icons.add),
          ),
        ],
      ),
    );
  }
}

class IconForCounter extends StatelessWidget {
  const IconForCounter({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 11,
      backgroundColor: AppColors.whiteColor,
      child: Icon(icon, size: 16, color: AppColors.darkBrownColor),
    );
  }
}
