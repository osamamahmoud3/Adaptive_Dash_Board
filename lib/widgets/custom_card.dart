import 'package:adaptive_dash_board/utils/styles/app_images.dart';
import 'package:adaptive_dash_board/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage(Assets.imagesMycardBackground)),
          borderRadius: BorderRadius.circular(12),
          color: const Color(0XFF4EB7F2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 31, right: 42, top: 16),
              title: Text(
                'Name card',
                style: Appstyles.styleRegular16(context: context)
                    .copyWith(color: Colors.white),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: Appstyles.styleMeduim20(context: context)
                    .copyWith(color: Colors.white),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      '0918 8124 0042 8129',
                      style: Appstyles.styleSemiBold24(context: context)
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      '12/20 - 124',
                      style: Appstyles.styleRegular16(context: context)
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 27,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
