import 'dart:developer';

import 'package:adaptive_dash_board/models/in_come_details_model.dart';
import 'package:adaptive_dash_board/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key, required this.inComeDetailsModel});
  final InComeDetailsModel inComeDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: inComeDetailsModel.color),
      ),
      title: Text(inComeDetailsModel.title, style: Appstyles.styleRegular16(context: context)),
      trailing: Text(inComeDetailsModel.triling,
          style: Appstyles.styleRegular16(context: context).copyWith(
              fontWeight: FontWeight.w500, color: const Color(0XFF208CC8))),
    );
  }
}
