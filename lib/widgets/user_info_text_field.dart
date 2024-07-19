import 'package:adaptive_dash_board/models/enter_your_info_model.dart';
import 'package:adaptive_dash_board/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';

class UserInputTextField extends StatelessWidget {
  const UserInputTextField({
    super.key,
    required this.enterYourInfoModel,
  });

  final EnterYourInfoModel enterYourInfoModel;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: enterYourInfoModel.textFileldHintText,
          hintStyle: Appstyles.styleRegular16(context: context)
              .copyWith(color: const Color(0XffAAAAAA)),
          filled: true,
          fillColor: const Color(0XffFAFAFA),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xffFAFAFA),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xffFAFAFA),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xffFAFAFA),
            ),
          )),
    );
  }
}
