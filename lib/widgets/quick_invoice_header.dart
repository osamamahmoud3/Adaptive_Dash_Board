import 'package:adaptive_dash_board/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoice',
          style: Appstyles.styleSemiBold20(context: context),
        ),
        const CircleAvatar(
          radius: 30,
          backgroundColor: Color(0XFFFAFAFA),
          child: Icon(
            Icons.add,
            color: Color(0XFF4EB7F2),
          ),
        )
      ],
    );
  }
}
