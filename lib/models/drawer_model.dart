class DrawerItemModel {
  final String
      title; // mean that the value can be initilize while complie time and it is immutable
  final String image;

  DrawerItemModel({
    required this.title,
    required this.image,
  });
  factory DrawerItemModel.fromJson(dynamic data) {
    return DrawerItemModel(
      image: data['image'],
      title: data['title'],
    );
  }
}
