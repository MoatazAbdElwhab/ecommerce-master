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

class Metadata {
  final int currentPage;
  final int numberOfPages;
  final int limit;

  Metadata({
    required this.currentPage,
    required this.numberOfPages,
    required this.limit,
  });

  factory Metadata.fromJson(Map<String, dynamic> json) {
    return Metadata(
      currentPage: json['currentPage'],
      numberOfPages: json['numberOfPages'],
      limit: json['limit'],
    );
  }
}

class CategoryModel {
  final String id;
  final String name;
  final String slug;
  final String image;
  final String createdAt;
  final String updatedAt;

  CategoryModel({
    required this.id,
    required this.name,
    required this.slug,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['_id'],
      name: json['name'],
      slug: json['slug'],
      image: json['image'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }
}
