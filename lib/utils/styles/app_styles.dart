import 'package:adaptive_dash_board/utils/config_size.dart';
import 'package:flutter/material.dart';

abstract class Appstyles {
  const Appstyles({required BuildContext context});
  static TextStyle styleRegular16({required BuildContext context}) {
    return TextStyle(
      color: const Color(0XFF064061),
      fontSize: getResposiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold16({required BuildContext context}) {
    return TextStyle(
      color: const Color(0XFF064061),
      fontSize: getResposiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold12({required BuildContext context}) {
    return TextStyle(
      color: const Color(0XFF064061),
      fontSize: getResposiveFontSize(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular14({required BuildContext context}) {
    return TextStyle(
      color: const Color(0XFFAAAAAA),
      fontSize: getResposiveFontSize(context, fontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24({required BuildContext context}) {
    return TextStyle(
      color: const Color(0XFF4EB7F2),
      fontSize: getResposiveFontSize(context, fontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20({required BuildContext context}) {
    return TextStyle(
      color: const Color(0XFF064061),
      fontSize: getResposiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12({required BuildContext context}) {
    return TextStyle(
      color: const Color(0XFFAAAAAA),
      fontSize: getResposiveFontSize(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold18({required BuildContext context}) {
    return TextStyle(
      color: const Color(0XFFFFFFFF),
      fontSize: getResposiveFontSize(context, fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold16({required BuildContext context}) {
    return TextStyle(
      color: const Color(0XFF4EB7F2),
      fontSize: getResposiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMeduim20({required BuildContext context}) {
    return TextStyle(
      color: const Color(0XFF064061),
      fontSize: getResposiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }
}

// ScaleFactor (Done)
// Resposive FontSize (Done)
//( Min , Max ) FontSize (Done)
double getResposiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double resposiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.75;
  double upperLimit = fontSize * 1.2;
  return resposiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.mobileBreakPoint) {
    return width / 500;
  } else if (width < SizeConfig.tabletBreakPoint) {
    return width / 1000;
  } else {
    return width / 1950;
  }
}
