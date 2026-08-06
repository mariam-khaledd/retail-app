import 'package:flutter/material.dart';

import '../../../../Helpers/app_colors.dart';
import '../../../../Helpers/app_text.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  static const List<OrderModel> _orders = [
    OrderModel(
      number: 345,
      status: 'Delivered',
      date: 'October 26, 2014',
      price: 700,
      isDelivered: true,
    ),
    OrderModel(
      number: 346,
      status: 'Cancelled',
      date: 'October 14, 2016',
      price: 452,
      isDelivered: false,
    ),
    OrderModel(
      number: 347,
      status: 'Delivered',
      date: 'July 26, 2017',
      price: 281,
      isDelivered: true,
    ),
  ];

  int _selectedTab = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            const _OrdersHeader(),
            const SizedBox(height: 14),
            _OrdersTabs(selectedIndex: _selectedTab, onTabSelected: _selectTab),
            const _OrdersDivider(),
            Expanded(
              child: _selectedTab == 1
                  ? const _OrdersList(orders: _orders)
                  : const _EmptyOrdersMessage(),
            ),
          ],
        ),
      ),
    );
  }

  void _selectTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }
}

class _OrdersHeader extends StatelessWidget {
  const _OrdersHeader();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Row(
        children: [
          const Expanded(
            child: Center(
              child: AppText('Orders', style: _OrdersTextStyles.title),
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}

class _OrdersTabs extends StatelessWidget {
  const _OrdersTabs({required this.selectedIndex, required this.onTabSelected});

  final int selectedIndex;
  final ValueChanged<int> onTabSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _OrdersTab(
            title: 'Ongoing',
            index: 0,
            isSelected: selectedIndex == 0,
            onSelected: onTabSelected,
          ),
        ),
        Expanded(
          child: _OrdersTab(
            title: 'History',
            index: 1,
            isSelected: selectedIndex == 1,
            onSelected: onTabSelected,
          ),
        ),
      ],
    );
  }
}

class _OrdersTab extends StatelessWidget {
  const _OrdersTab({
    required this.title,
    required this.index,
    required this.isSelected,
    required this.onSelected,
  });

  final String title;
  final int index;
  final bool isSelected;
  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onSelected(index),
      child: Container(
        height: 36,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isSelected ? _OrdersColors.primary : Colors.transparent,
              width: 3,
            ),
          ),
        ),
        child: AppText(
          title,
          style: _OrdersTextStyles.tab.copyWith(
            color: isSelected ? _OrdersColors.primary : _OrdersColors.brown,
          ),
        ),
      ),
    );
  }
}

class _OrdersList extends StatelessWidget {
  const _OrdersList({required this.orders});

  final List<OrderModel> orders;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemCount: orders.length,
      separatorBuilder: (context, index) => const _OrdersDivider(),
      itemBuilder: (context, index) {
        return _OrderItem(order: orders[index]);
      },
    );
  }
}

class _OrderItem extends StatelessWidget {
  const _OrderItem({required this.order});

  final OrderModel order;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        child: Row(
          children: [
            const _OrderIcon(),
            const SizedBox(width: 12),
            Expanded(child: _OrderInfo(order: order)),
            AppText('\$${order.price}', style: _OrdersTextStyles.price),
          ],
        ),
      ),
    );
  }
}

class _OrderIcon extends StatelessWidget {
  const _OrderIcon();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: _OrdersColors.secondary,
      ),
      child: const Icon(
        Icons.shopping_basket_outlined,
        color: AppColors.whiteColor,
        size: 26,
      ),
    );
  }
}

class _OrderInfo extends StatelessWidget {
  const _OrderInfo({required this.order});

  final OrderModel order;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppText('Order #${order.number}', style: _OrdersTextStyles.orderNumber),
        const SizedBox(height: 4),
        AppText(
          order.status,
          style: _OrdersTextStyles.status.copyWith(
            color: order.isDelivered
                ? _OrdersColors.delivered
                : _OrdersColors.cancelled,
          ),
        ),
        const SizedBox(height: 2),
        AppText(order.date, style: _OrdersTextStyles.date),
      ],
    );
  }
}

class _EmptyOrdersMessage extends StatelessWidget {
  const _EmptyOrdersMessage();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: AppText('No ongoing orders', style: _OrdersTextStyles.empty),
    );
  }
}

class _OrdersDivider extends StatelessWidget {
  const _OrdersDivider();

  @override
  Widget build(BuildContext context) {
    return const Divider(height: 1, thickness: 1, color: _OrdersColors.divider);
  }
}

class OrderModel {
  const OrderModel({
    required this.number,
    required this.status,
    required this.date,
    required this.price,
    required this.isDelivered,
  });

  final int number;
  final String status;
  final String date;
  final int price;
  final bool isDelivered;
}

class _OrdersColors {
  const _OrdersColors._();

  static const Color primary = Color(0xFFFF6900);
  static const Color secondary = Color(0xFFFF7918);
  static const Color brown = Color(0xFF8B5A2B);
  static const Color delivered = Color(0xFF42C518);
  static const Color cancelled = Color(0xFFFF2929);
  static const Color divider = Color(0xFFF0ECE8);
}

class _OrdersTextStyles {
  const _OrdersTextStyles._();

  static const TextStyle title = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: _OrdersColors.primary,
  );

  static const TextStyle tab = TextStyle(fontSize: 16);

  static const TextStyle empty = TextStyle(
    fontSize: 14,
    color: _OrdersColors.brown,
  );

  static const TextStyle orderNumber = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: _OrdersColors.brown,
  );

  static const TextStyle status = TextStyle(fontSize: 12);

  static const TextStyle date = TextStyle(
    fontSize: 11,
    color: _OrdersColors.brown,
  );

  static const TextStyle price = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: _OrdersColors.secondary,
  );
}
