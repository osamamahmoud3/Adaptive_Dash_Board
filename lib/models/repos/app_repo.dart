import 'package:adaptive_dash_board/models/all_expenses_item_model.dart';
import 'package:adaptive_dash_board/models/drawer_model.dart';
import 'package:adaptive_dash_board/models/transaction_history_model.dart';

abstract class AppRepo {
  Future<List<AllExpenesesItemModel>> getAllExpeneses();
  Future<List<DrawerItemModel>> getDrawerItems();
  Future<List<TransactionHistoryModel>> getTransactionHistory();
}
