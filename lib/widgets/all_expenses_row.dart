import 'package:adaptive_dash_board/models/repos/app_repo_impl.dart';
import 'package:adaptive_dash_board/utils/controllers/show_data_cubit.dart';
import 'package:adaptive_dash_board/widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllExpensesRow extends StatefulWidget {
  const AllExpensesRow({super.key});

  @override
  State<AllExpensesRow> createState() => _AllExpensesRowState();
}

int selecteditem = 0;

class _AllExpensesRowState extends State<AllExpensesRow> {
  @override
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
    create: (context) => ShowItems(AppRepoImpl())..getAllExpenesesItem(),
      child: BlocBuilder<ShowItems, ShowItemState>(
        builder: (context, state) {
          final cubit = BlocProvider.of<ShowItems>(context);
          return cubit.allExpenesesitem != null
              ? Row(
                  children: cubit.allExpenesesitem!.asMap().entries.map((e) {
                    int index = e.key;

                    return Expanded(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selecteditem = index;
                            });
                          },
                          child: Padding(
                            padding: index == 1
                                ? const EdgeInsets.symmetric(horizontal: 12)
                                : EdgeInsets.zero,
                            child: AllExpensesItem(
                                isActive: selecteditem == index,
                                icon: cubit.allExpenesesitem![index].icon,
                                title: cubit.allExpenesesitem![index].title,
                                date: cubit.allExpenesesitem![index].date,
                                price: cubit.allExpenesesitem![index].price),
                          )),
                    );
                  }).toList(),
                )
              : const CircularProgressIndicator();
        },
      ),
    );
  }
}
