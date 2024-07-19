import 'package:adaptive_dash_board/utils/config_size.dart';
import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.desktopLayout,
      required this.tabletLayout});
  final WidgetBuilder mobileLayout, desktopLayout, tabletLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth < SizeConfig.mobileBreakPoint) {
        return mobileLayout(context);
      } else if (constraints.maxWidth < SizeConfig.tabletBreakPoint) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    }));
  }
}
