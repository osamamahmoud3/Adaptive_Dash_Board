import 'package:adaptive_dash_board/models/enter_your_info_model.dart';
import 'package:adaptive_dash_board/widgets/enter_your_info.dart';
import 'package:flutter/material.dart';

class TextFieldGridView extends StatelessWidget {
  const TextFieldGridView({
    super.key,
    required this.items,
  });

  final List<EnterYourInfoModel> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 92 + 92 + 24,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            mainAxisExtent: 92,
            crossAxisSpacing: 16,
            crossAxisCount: 2),
        itemBuilder: ((context, index) {
          return EnterYourInfoItem(
            enterYourInfoModel: items[index],
          );
        }),
      ),
    );
  }
}
