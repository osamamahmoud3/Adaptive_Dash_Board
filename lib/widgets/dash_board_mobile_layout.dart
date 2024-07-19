import 'package:adaptive_dash_board/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:adaptive_dash_board/widgets/my_card_and_in_come_section.dart';
import 'package:flutter/material.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          MyCardAndInComeSection()
        ],
      ),
    );
  }
}
