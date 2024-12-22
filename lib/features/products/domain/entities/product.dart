class Product {
  final String id;
  final String title;
  final String description;
  final int quantity;
  final int price;
  final String imageCover;
  final List<String> images;
  final double ratingsAverage;
  final int ratingsQuantity;
  final int sold;
  final int? priceAfterDiscount;

  const Product({
    required this.sold,
    required this.images,
    required this.ratingsQuantity,
    required this.id,
    required this.title,
    required this.description,
    required this.quantity,
    required this.price,
    required this.priceAfterDiscount,
    required this.imageCover,
    required this.ratingsAverage,
  });
}
