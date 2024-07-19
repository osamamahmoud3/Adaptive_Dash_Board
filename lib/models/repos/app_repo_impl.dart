import 'dart:convert';
import 'package:adaptive_dash_board/models/all_expenses_item_model.dart';
import 'package:adaptive_dash_board/models/drawer_model.dart';
import 'package:adaptive_dash_board/models/repos/app_repo.dart';
import 'package:adaptive_dash_board/models/transaction_history_model.dart';
import 'package:flutter/services.dart';

class AppRepoImpl implements AppRepo {
  @override
  Future<List<AllExpenesesItemModel>> getAllExpeneses() async {
    var data = await rootBundle.loadString('asstes/api/products.json');
    var result = jsonDecode(data);
    List<AllExpenesesItemModel> allExpensesItemsList = [];
    for (var item in result['AllExpensesItems']) {
      allExpensesItemsList.add(AllExpenesesItemModel.fromjson(item));
    }
    return allExpensesItemsList;
  }

  @override
  Future<List<DrawerItemModel>> getDrawerItems() async {
    var data = await rootBundle.loadString('asstes/api/products.json');

    var result = jsonDecode(data);

    List<DrawerItemModel> drawerItemModel = [];
    for (var item in result['drawer']) {
      drawerItemModel.add(DrawerItemModel.fromJson(item));
    }
    return drawerItemModel;
  }

  @override
  Future<List<TransactionHistoryModel>> getTransactionHistory() async {
    var data = await rootBundle.loadString('asstes/api/products.json');

    var result = jsonDecode(data);

    List<TransactionHistoryModel> transactionHistoryList = [];

    for (var item in result['transcationHistory']) {
      transactionHistoryList.add(TransactionHistoryModel.fromJson(data: item));
    }
    return transactionHistoryList;
  }
}
