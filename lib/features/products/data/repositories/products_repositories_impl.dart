import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/error/exception.dart';
import 'package:ecommerce/core/error/failure.dart';
import 'package:ecommerce/features/products/data/data_sources/remote/products_remote_data_source.dart';
import 'package:ecommerce/features/products/data/mappers/product_mappers.dart';
import 'package:ecommerce/features/products/domain/entities/product.dart';
import 'package:ecommerce/features/products/domain/repositories/products_repositories.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProductsRepositories)
class ProductsRepositoriesImpl implements ProductsRepositories {
  final ProductsRemoteDataSource _remoteDataSource;

  ProductsRepositoriesImpl(this._remoteDataSource);
  @override
  Future<Either<Failure, List<Product>>> getProducts({
    String? categoryId,
  }) async {
    try {
      final response =
          await _remoteDataSource.getProducts(categoryId: categoryId);
      final products = response.products
          .map(
            (product) => product.toEntity,
          )
          .toList();
      return Right(products);
    } on AppException catch (exception) {
      return Left(Failure(exception.message));
    }
  }
}
