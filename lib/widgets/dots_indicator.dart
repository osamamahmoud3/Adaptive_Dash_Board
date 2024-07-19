import 'package:adaptive_dash_board/widgets/custom_dot.dart';
import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
            3,
            (index) => Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: CustomDotIndicator(isActive: index == currentIndex),
                )));
  }
}
