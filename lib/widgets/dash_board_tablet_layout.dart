import 'package:adaptive_dash_board/widgets/custom_drawer.dart';
import 'package:adaptive_dash_board/widgets/dash_board_mobile_layout.dart';
import 'package:flutter/material.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: DashBoardMobileLayout(),
          ),
        )
      ],
    );
  }
}
