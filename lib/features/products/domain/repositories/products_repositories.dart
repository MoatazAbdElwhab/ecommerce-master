import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/error/failure.dart';
import 'package:ecommerce/features/products/domain/entities/product.dart';

abstract class ProductsRepositories {
  Future<Either<Failure, List<Product>>> getProducts({String? categoryId});
}
