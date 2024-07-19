import 'package:adaptive_dash_board/models/enter_your_info_model.dart';
import 'package:adaptive_dash_board/utils/styles/app_styles.dart';
import 'package:adaptive_dash_board/widgets/user_info_text_field.dart';
import 'package:flutter/material.dart';

class EnterYourInfoItem extends StatelessWidget {
  const EnterYourInfoItem({
    super.key,
    required this.enterYourInfoModel,
  });
  final EnterYourInfoModel enterYourInfoModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          enterYourInfoModel.textFileldTitle,
          style: Appstyles.styleRegular16(context:  context),
        ),
        const SizedBox(
          height: 12,
        ),
        Expanded(
            child: UserInputTextField(enterYourInfoModel: enterYourInfoModel))
      ],
    );
  }
}
