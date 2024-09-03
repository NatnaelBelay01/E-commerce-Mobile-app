import 'package:dartz/dartz.dart';
import 'package:ecommerce/features/domain/entities/productentity.dart';
import 'package:ecommerce/core/failure.dart';
import 'package:ecommerce/features/domain/repository/repositories.dart';

class ViewProductUseCase{
	ProductRepositories productrepository;
	ViewProductUseCase({
		required this.productrepository,
	});
	Future<Either<Failure, Product>>call(String id) async {
		return await productrepository.viewproduct(id);
	}
}
