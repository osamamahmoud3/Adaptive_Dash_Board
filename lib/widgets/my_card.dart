import 'package:adaptive_dash_board/models/repos/app_repo_impl.dart';
import 'package:adaptive_dash_board/utils/controllers/show_data_cubit.dart';
import 'package:adaptive_dash_board/utils/styles/app_styles.dart';
import 'package:adaptive_dash_board/widgets/cutsom_back_ground_container.dart';
import 'package:adaptive_dash_board/widgets/dots_indicator.dart';
import 'package:adaptive_dash_board/widgets/my_card_page_view.dart';
import 'package:adaptive_dash_board/widgets/transaction_history_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  int currentindex = 0;
  PageController? pageController;
  @override
  void initState() {
    pageController = PageController();
    pageController!.addListener(() {
      currentindex = pageController!.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ShowItems(
              AppRepoImpl(),
            )..getLastTransactionHistory(),
        child: BlocBuilder<ShowItems, ShowItemState>(
          builder: (context, state) {
            final cubit = BlocProvider.of<ShowItems>(context);
            return cubit.transactionHistoryList != null
                ? Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                    ),
                    child: CustomBackroundContainer(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My Card',
                          style: Appstyles.styleSemiBold20(context: context),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        MyCardPageView(
                          pageController: pageController!,
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                        DotsIndicator(
                          currentIndex: currentindex,
                        ),
                        const Divider(
                          height: 40,
                          color: Color(0XFFF1F1F1),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            'Transaction History',
                            style: Appstyles.styleSemiBold20(context: context),
                          ),
                          trailing: Text(
                            'see all',
                            style: Appstyles.styleRegular16(context: context)
                                .copyWith(color: const Color(0Xff4EB7F2)),
                          ),
                        ),
                        Text(
                          '13 April 2022',
                          style: Appstyles.styleRegular16(context: context)
                              .copyWith(
                            color: const Color(0XFFAAAAAA),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: cubit.transactionHistoryList!.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: TransactionHistoryListTile(
                                  title: cubit
                                      .transactionHistoryList![index].title,
                                  subTitle: cubit
                                      .transactionHistoryList![index].subTitle,
                                  amount: cubit
                                      .transactionHistoryList![index].amount,
                                  amountColor: cubit
                                      .transactionHistoryList![index]
                                      .amountColor,
                                ),
                              );
                            })
                      ],
                    )),
                  )
                : const CircularProgressIndicator();
          },
        ));
  }
}
