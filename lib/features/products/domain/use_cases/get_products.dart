import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/error/failure.dart';
import 'package:ecommerce/features/products/domain/entities/product.dart';
import 'package:ecommerce/features/products/domain/repositories/products_repositories.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetProducts {
  final ProductsRepositories _productsRepositories;

  GetProducts(this._productsRepositories);

  Future<Either<Failure, List<Product>>> call({String? categoryId}) =>
      _productsRepositories.getProducts(categoryId: categoryId);
}
