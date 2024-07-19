import 'package:adaptive_dash_board/models/in_come_details_model.dart';
import 'package:adaptive_dash_board/widgets/in_come_details.dart';
import 'package:flutter/material.dart';

class InComeDetailsList extends StatelessWidget {
  const InComeDetailsList({super.key});
  static const List<InComeDetailsModel> items = [
    InComeDetailsModel(
        title: 'Design service', triling: '40%', color: Color(0Xff208CC8)),
    InComeDetailsModel(
        title: 'Design product', triling: '25%', color: Color(0Xff208CC8)),
    InComeDetailsModel(
        title: 'Product royalti', triling: '20%', color: Color(0Xff064061)),
    InComeDetailsModel(title: 'Other', triling: '22%', color: Color(0x0f064061))
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => IncomeDetails(inComeDetailsModel: e)).toList(),
    );
}
}
