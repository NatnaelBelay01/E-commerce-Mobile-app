import 'package:dartz/dartz.dart';
import 'package:ecommerce/features/domain/entities/productentity.dart';
import 'package:ecommerce/core/failure.dart';
import 'package:ecommerce/features/domain/repository/repositories.dart';

class ViewAllProductUseCase {
  ProductRepositories productrepository;
  ViewAllProductUseCase({
    required this.productrepository,
  });
  Future<Either<Failure, List<Product>>> call(String id) async {
    return await productrepository.viewallproducts();
  }
}
