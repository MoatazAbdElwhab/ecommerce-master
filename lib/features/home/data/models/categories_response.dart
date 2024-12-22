import 'package:ecommerce/core/models/category_model.dart';
import 'package:ecommerce/core/models/meta_data.dart';

class CategoriesResponse {
  final int result;
  final Metadata metadata;
  final List<CategoryModel> categories;

  CategoriesResponse({
    required this.result,
    required this.metadata,
    required this.categories,
  });

  CategoriesResponse.fromJson(Map<String, dynamic> json)
      : this(
          result: json['results'],
          metadata: Metadata.fromJson(json['metadata']),
          categories: (json['data'] as List<dynamic>)
              .map(
                (item) => CategoryModel.fromJson(item),
              )
              .toList(),
        );
}
