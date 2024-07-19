class TransactionHistoryModel {
  final String title, subTitle, amount;
  final String amountColor;

  const TransactionHistoryModel(
      {required this.title,
      required this.subTitle,
      required this.amount,
      required this.amountColor});
  factory TransactionHistoryModel.fromJson({required dynamic data}) {
    return TransactionHistoryModel(
      title: data['title'],
      subTitle: data['subTitle'],
      amount: data['amount'],
      amountColor: data['amountColor'],
    );
  }
}
