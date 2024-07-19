import 'package:adaptive_dash_board/widgets/in_come.dart';
import 'package:adaptive_dash_board/widgets/my_card.dart';
import 'package:flutter/material.dart';

class MyCardAndInComeSection extends StatelessWidget {
  const MyCardAndInComeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          MyCard(),
          SizedBox(
            height: 24,
          ),
          InCome()
        ],
      ),
    );
  }
}
