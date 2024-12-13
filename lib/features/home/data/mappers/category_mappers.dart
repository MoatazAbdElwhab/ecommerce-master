import 'package:ecommerce/features/home/data/models/categories_response.dart';
import 'package:ecommerce/features/home/domain/entities/category.dart';

extension CategoryMapper on CategoryModel {
  Category get toEntity => Category(
        id: id,
        name: name,
        slug: slug,
        image: image,
      );
}
