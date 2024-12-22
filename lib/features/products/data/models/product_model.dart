import 'package:ecommerce/core/models/category_model.dart';
import 'package:ecommerce/features/products/data/models/brand_model.dart';

class ProductModel {
  final String id;
  final String title;
  final String slug;
  final String description;
  final int quantity;
  final int price;
  final String imageCover;
  final List<String> images;
  final double ratingsAverage;
  final int ratingsQuantity;
  final int sold;
  final CategoryModel category;
  final Brand brand;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int? priceAfterDiscount;

  const ProductModel({
    required this.sold,
    required this.images,
    required this.ratingsQuantity,
    required this.id,
    required this.title,
    required this.slug,
    required this.description,
    required this.quantity,
    required this.price,
    required this.priceAfterDiscount,
    required this.imageCover,
    required this.category,
    required this.brand,
    required this.ratingsAverage,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        sold: json['sold'] as int,
        images: (json['images'] as List<dynamic>).cast<String>(),
        ratingsQuantity: json['ratingsQuantity'] as int,
        id: json['_id'] as String,
        title: json['title'] as String,
        slug: json['slug'] as String,
        description: json['description'] as String,
        quantity: json['quantity'] as int,
        price: json['price'] as int,
        priceAfterDiscount: json['priceAfterDiscount'] as int?,
        imageCover: json['imageCover'] as String,
        category:
            CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
        brand: Brand.fromJson(json['brand'] as Map<String, dynamic>),
        ratingsAverage: (json['ratingsAverage'] as num).toDouble(),
        createdAt: DateTime.parse(json['createdAt'] as String),
        updatedAt: DateTime.parse(json['updatedAt'] as String),
      );
}
