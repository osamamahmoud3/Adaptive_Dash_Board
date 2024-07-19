import 'package:adaptive_dash_board/models/user_info_model.dart';
import 'package:adaptive_dash_board/utils/styles/app_images.dart';
import 'package:adaptive_dash_board/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userInfoModel,
  });
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0XFFFAFAFA),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: Text(userInfoModel.title,
            style: Appstyles.styleSemiBold16(context: context)),
        subtitle: Text(userInfoModel.subTitle,
            style: Appstyles.styleRegular12(context: context)),
        leading: SvgPicture.asset(userInfoModel.iamge),
      ),
    );
  }
}
