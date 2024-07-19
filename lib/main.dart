import 'package:adaptive_dash_board/generated/l10n.dart';
import 'package:adaptive_dash_board/widgets/adaptive_layout.dart';
import 'package:adaptive_dash_board/views/dash_board_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const ResponsiveDashBoard(),
  );
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        // GlobalMaterialLocalizations.delegate,
        // GlobalWidgetsLocalizations.delegate,
        // GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: const DashBoardView(),
    );
  }
}
