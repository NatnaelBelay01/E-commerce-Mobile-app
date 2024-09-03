import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/failure.dart';
import 'package:ecommerce/features/domain/repository/repositories.dart';

class DeleteProductUseCase {
  ProductRepositories productrepository;
  DeleteProductUseCase({
    required this.productrepository,
  });
  Future<Either<Failure, void>> call(String id) async {
    return await productrepository.deleteproduct(id);
  }
}
