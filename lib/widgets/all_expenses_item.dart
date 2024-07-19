import 'package:adaptive_dash_board/models/all_expenses_item_model.dart';
import 'package:adaptive_dash_board/widgets/active_and_inactive_all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key,
      required this.isActive,
      required this.icon,
      required this.title,
      required this.date,
      required this.price});

  final bool isActive;
  final String icon, title, date, price;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 500),
      crossFadeState:
          isActive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      firstChild: isActive
          ? ActiveAllExpensesItem(
              icon: icon,
              title: title,
              date: date,
              price: price,
            )
          : InActiveAllExpensesItem(
              icon: icon,
              title: title,
              date: date,
              price: price,
            ),
      secondChild: InActiveAllExpensesItem(
        icon: icon,
        title: title,
        date: date,
        price: price,
      ),
    );
  }
}
