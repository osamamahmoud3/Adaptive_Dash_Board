import 'package:adaptive_dash_board/models/all_expenses_item_model.dart';
import 'package:adaptive_dash_board/models/drawer_model.dart';
import 'package:adaptive_dash_board/models/repos/app_repo.dart';
import 'package:adaptive_dash_board/models/transaction_history_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'show_data_state.dart';

class ShowItems extends Cubit<ShowItemState> {
  final AppRepo appRepo;
  ShowItems(this.appRepo) : super(AppCubitInitial());
  List<AllExpenesesItemModel>? allExpenesesitem;
  List<DrawerItemModel>? drawerItemModel;
  List<TransactionHistoryModel>? transactionHistoryList;
  Future getAllExpenesesItem() async {
    emit(AppCubitLoading());
    var result = await appRepo.getAllExpeneses();
    allExpenesesitem = result;
    emit(AppCubitSuccess());
  }

  Future getDrawerItems() async {
    emit(AppCubitLoading());
    var result = await appRepo.getDrawerItems();
    drawerItemModel = result;
    emit(AppCubitSuccess());
  }

  Future getLastTransactionHistory() async {
    emit(AppCubitLoading());
    var result = await appRepo.getTransactionHistory();
    transactionHistoryList = result;
    emit(AppCubitSuccess());
  }
}
