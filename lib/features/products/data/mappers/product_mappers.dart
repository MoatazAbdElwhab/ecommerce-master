import 'package:ecommerce/features/products/data/models/product_model.dart';
import 'package:ecommerce/features/products/domain/entities/product.dart';

extension ProductMappers on ProductModel {
  Product get toEntity => Product(
        sold: sold,
        images: images,
        ratingsQuantity: ratingsQuantity,
        id: id,
        title: title,
        description: description,
        quantity: quantity,
        price: price,
        priceAfterDiscount: priceAfterDiscount,
        imageCover: imageCover,
        ratingsAverage: ratingsAverage,
      );
}
