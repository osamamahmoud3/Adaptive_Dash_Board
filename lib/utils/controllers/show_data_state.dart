part of 'show_data_cubit.dart';

sealed class ShowItemState {}

final class AppCubitInitial extends ShowItemState {}

final class AppCubitLoading extends ShowItemState {}

final class AppCubitSuccess extends ShowItemState {
  
}

final class AppCubitFailure extends ShowItemState {
 
}
