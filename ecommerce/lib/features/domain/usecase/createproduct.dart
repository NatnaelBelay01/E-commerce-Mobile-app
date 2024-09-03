import 'package:dartz/dartz.dart';
import 'package:ecommerce/features/domain/entities/productentity.dart';
import 'package:ecommerce/core/failure.dart';
import 'package:ecommerce/features/domain/repository/repositories.dart';

class CreateProductUseCase {
  ProductRepositories productrepository;
  CreateProductUseCase({
    required this.productrepository,
  });
  Future<Either<Failure, Product>> call(Product product) async {
    return await productrepository.createproduct(product);
  }
}
