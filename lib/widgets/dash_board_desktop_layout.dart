import 'package:adaptive_dash_board/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:adaptive_dash_board/widgets/custom_drawer.dart';
import 'package:adaptive_dash_board/widgets/my_card_and_in_come_section.dart';

import 'package:flutter/material.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: AllExpensesAndQuickInvoiceSection(),
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 2,
          child: MyCardAndInComeSection(),
        )
      ],
    );
  }
}
