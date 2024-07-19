import 'package:adaptive_dash_board/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton(
      {super.key,
      required this.text,
      required this.color,
      required this.style});
  final String text;
  final Color color;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Center(
          child: Text(text, style: style),
        ),
      ),
    );
  }
}
