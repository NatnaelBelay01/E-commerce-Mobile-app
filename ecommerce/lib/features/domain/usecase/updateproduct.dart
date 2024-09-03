import 'package:dartz/dartz.dart';
import 'package:ecommerce/features/domain/entities/productentity.dart';
import 'package:ecommerce/core/failure.dart';
import 'package:ecommerce/features/domain/repository/repositories.dart';

class UpdateProductUseCase {
  ProductRepositories productrepository;
  UpdateProductUseCase({
    required this.productrepository,
  });
  Future<Either<Failure, Product>> call(Product product) async {
    return await productrepository.updateproduct(product);
  }
}
