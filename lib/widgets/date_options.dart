import 'package:adaptive_dash_board/utils/styles/app_images.dart';
import 'package:adaptive_dash_board/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DateOptions extends StatelessWidget {
  const DateOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(width: 1, color: Color(0xffF1F1F1)))),
      child: Row(
        children: [
           Text(
            'Monthly',
            style: Appstyles.styleSemiBold16(context: context),
          ),
          const SizedBox(
            width: 18,
          ),
          SvgPicture.asset(Assets.imagesArrowDown)
        ],
      ),
    );
  }
}
