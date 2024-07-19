import 'dart:developer';

import 'package:adaptive_dash_board/utils/config_size.dart';
import 'package:adaptive_dash_board/widgets/custom_header.dart';
import 'package:adaptive_dash_board/widgets/cutsom_back_ground_container.dart';
import 'package:adaptive_dash_board/widgets/in_come_cart.dart';
import 'package:adaptive_dash_board/widgets/income_details_list.dart';
import 'package:flutter/material.dart';

class InCome extends StatelessWidget {
  const InCome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: CustomBackroundContainer(
          child: Column(
        children: [
          CustomHeader(headerTitle: "Income"),
          SizedBox(
            height: 16,
          ),
          InComeWidget()
        ],
      )),
    );
  }
}

class InComeWidget extends StatelessWidget {
  const InComeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    if (MediaQuery.sizeOf(context).width <= 1792 &&
            MediaQuery.sizeOf(context).width > SizeConfig.tabletBreakPoint ||
        MediaQuery.sizeOf(context).width <= 512 ||
        MediaQuery.sizeOf(context).width <= 640) {
      return const IntrinsicHeight(
        child: Column(
          children: [
            Expanded(child: InComeChart()),
            SizedBox(
              height: 20,
            ),
            Expanded(child: InComeDetailsList())
          ],
        ),
      );
    } else {
      return const IntrinsicHeight(
        child: Row(
          children: [
            Expanded(child: InComeChart()),
            SizedBox(
              width: 20,
            ),
            Expanded(child: InComeDetailsList())
          ],
        ),
      );
    }
  }
}
