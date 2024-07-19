import 'package:adaptive_dash_board/models/transaction_history_model.dart';
import 'package:adaptive_dash_board/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';

extension ColorParsing on String {
  Color parseColor() {
    if (length == 10) {
      return const Color.fromARGB(
          255, 188, 196, 203); //default value for error in value 
    } else {
      return Color(int.parse(this));
    }
  }
}

class TransactionHistoryListTile extends StatelessWidget {
  const TransactionHistoryListTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.amount,
    required this.amountColor,
  });
  final String title, subTitle, amount, amountColor;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0XFFFAFAFA)),
        child: ListTile(
          title: Text(
            title,
            style: Appstyles.styleSemiBold16(context: context),
          ),
          subtitle: Text(
            subTitle,
            style: Appstyles.styleRegular16(context: context)
                .copyWith(height: 1.5, color: const Color(0XffAAAAAA)),
          ),
          trailing: Text(
            amount,
            style: Appstyles.styleSemiBold20(context: context)
                .copyWith(color: amountColor.parseColor()),
          ),
        ));
  }
}
