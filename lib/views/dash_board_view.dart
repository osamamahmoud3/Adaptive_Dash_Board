import 'package:adaptive_dash_board/widgets/adaptive_layout.dart';
import 'package:adaptive_dash_board/widgets/custom_drawer.dart';
import 'package:adaptive_dash_board/widgets/dash_board_desktop_layout.dart';
import 'package:adaptive_dash_board/widgets/dash_board_mobile_layout.dart';
import 'package:adaptive_dash_board/widgets/dash_board_tablet_layout.dart';

import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});
  static GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(
          child: CustomDrawer(),
        ),
        key: scaffoldkey,
        appBar: MediaQuery.sizeOf(context).width < 800
            ? AppBar(
                backgroundColor: const Color(0xffFAFAFA).withGreen(255),
                leading: GestureDetector(
                    onTap: () {
                      scaffoldkey.currentState!.openDrawer();
                    },
                    child: const Icon(Icons.menu)),
              )
            : null,
        backgroundColor: const Color(0XffF7F9FA),
        body: AdaptiveLayout(
            mobileLayout: (context) => const DashBoardMobileLayout(),
            desktopLayout: (context) => const DashBoardDesktopLayout(),
            tabletLayout: (context) => const DashBoardTabletLayout()));
  }
}
