import 'package:adaptive_dash_board/models/all_expenses_item_model.dart';
import 'package:adaptive_dash_board/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.icon,
    required this.title,
    required this.date,
    required this.price,
  });

  final String icon, title, date, price;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(
              width: 1,
              color: Color(0XFFF1F1F1),
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: CircleAvatar(
                    backgroundColor: const Color(0XffFAFAFA),
                    radius: 30,
                    child: SvgPicture.asset(
                      icon,
                      color: const Color(0Xff4EB7F2), //DOTO:
                    ),
                  ),
                ),
                const Flexible(child: Icon(Icons.arrow_forward_ios))
              ],
            ),
            const SizedBox(
              height: 34,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title,
                style: Appstyles.styleSemiBold16(context: context),
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                date,
                style: Appstyles.styleRegular14(context: context),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                price,
                style: Appstyles.styleSemiBold24(context: context),
              ),
            ),
          ],
        ));
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.icon,
    required this.title,
    required this.date,
    required this.price,
  });

  final String icon, title, date, price;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        decoration: ShapeDecoration(
          color: const Color(0XFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(
              width: 1,
              color: Color(0XFFF1F1F1),
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: CircleAvatar(
                    backgroundColor: const Color(0XffFFFFFF).withOpacity(0.1),
                    radius: 30,
                    child: SvgPicture.asset(
                      icon,
                      color: const Color(0XffFFFFFF), //DOTO:
                    ),
                  ),
                ),
                const Flexible(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 34,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title,
                style: Appstyles.styleSemiBold16(context: context)
                    .copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                date,
                style: Appstyles.styleRegular14(context: context)
                    .copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                price,
                style: Appstyles.styleSemiBold24(context: context)
                    .copyWith(color: Colors.white),
              ),
            ),
          ],
        ));
  }
}
