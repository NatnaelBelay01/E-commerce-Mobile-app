import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/failure.dart';
import 'package:ecommerce/features/domain/entities/productentity.dart';

abstract class ProductRepositories {
  Future<Either<Failure, Product>> viewproduct(String id);
  Future<Either<Failure, List<Product>>> viewallproducts();
  Future<Either<Failure, Product>> createproduct(Product product);
  Future<Either<Failure, void>> deleteproduct(String id);
  Future<Either<Failure, Product>> updateproduct(Product product);
}
