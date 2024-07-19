import 'package:adaptive_dash_board/widgets/activer_and_inactive_item.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.isactive,
    required this.image,
    required this.title,
  });
  final String image, title;
  final bool isactive;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 500),
      crossFadeState:
          isactive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      firstChild: ActiveItem(
        image: image,
        title: title,
      ),
      secondChild: InActiveItem(
        image: image,
        title: title,
      ),
    );
  }
}
