class AllExpenesesItemModel {
  final String icon, title, date, price;

  const AllExpenesesItemModel(
      {required this.icon,
      required this.title,
      required this.date,
      required this.price});
  factory AllExpenesesItemModel.fromjson(dynamic data) {
    return AllExpenesesItemModel(
      icon: data['icon'],
      title: data['title'],
      date: data['date'],
      price: data['price'],
    );
  }
}

