import 'package:adaptive_dash_board/models/user_info_model.dart';
import 'package:adaptive_dash_board/utils/styles/app_images.dart';
import 'package:adaptive_dash_board/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail',
        iamge: Assets.imagesAvater1),
    UserInfoModel(
        title: 'Josua Nunito',
        subTitle: 'Josh Nunito@gmail.com',
        iamge: Assets.imagesAvater2),
    UserInfoModel(
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail',
        iamge: Assets.imagesAvater1)
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .asMap()
            .entries
            .map((e) => IntrinsicWidth(
                child: UserInfoListTile(userInfoModel: items[e.key])))
            .toList(),
      ),
    );
  }
}
