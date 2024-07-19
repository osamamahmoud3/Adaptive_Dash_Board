import 'package:adaptive_dash_board/utils/styles/app_styles.dart';
import 'package:adaptive_dash_board/widgets/date_options.dart';
import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key, required this.headerTitle});
  final String headerTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headerTitle,
          style: Appstyles.styleSemiBold20(context: context),
        ),
        const DateOptions()
      ],
    );
  }
}
