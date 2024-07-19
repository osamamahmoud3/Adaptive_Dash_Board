import 'package:adaptive_dash_board/widgets/custom_header.dart';
import 'package:adaptive_dash_board/widgets/all_expenses_row.dart';
import 'package:adaptive_dash_board/widgets/cutsom_back_ground_container.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackroundContainer(
      child: Column(
        children: [
          CustomHeader(
            headerTitle: 'All Expenses',
          ),
          SizedBox(
            height: 16,
          ),
          AllExpensesRow()
        ],
      ),
    );
  }
}
