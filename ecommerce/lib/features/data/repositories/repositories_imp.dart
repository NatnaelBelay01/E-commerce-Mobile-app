import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/exception.dart';
import 'package:ecommerce/core/failure.dart';
import 'package:ecommerce/core/network_info.dart';
import 'package:ecommerce/features/data/datasource/local_data_source.dart';
import 'package:ecommerce/features/data/datasource/remote_data_source.dart';
import 'package:ecommerce/features/data/models/product_model.dart';
import 'package:ecommerce/features/domain/entities/productentity.dart';
import 'package:ecommerce/features/domain/repository/repositories.dart';

class ProductRepositoriesImp implements ProductRepositories {
  final ProductLocalDataSource localdatasource;
  final ProductRemoteDataSource remotedatasource;
  final NetworkInfo networkInfo;

  ProductRepositoriesImp({
    required this.localdatasource,
    required this.remotedatasource,
    required this.networkInfo,
  });
  Product changetoEntity(ProductModel product) {
    return Product(
      id: product.id,
      name: product.name,
      description: product.description,
      imageUrl: product.imageUrl,
      price: product.price,
    );
  }

  ProductModel changeToProductModel(Product product) {
    return ProductModel(
      id: product.id,
      name: product.name,
      description: product.description,
      imageUrl: product.imageUrl,
      price: product.price,
    );
  }

  @override
  Future<Either<Failure, Product>> createproduct(Product product) async {
    if (await networkInfo.isconnected) {
      try {
        final result =
            await remotedatasource.createProduct(changeToProductModel(product));
        return Right(changetoEntity(result));
      } on ServerException {
        return const Left(ServerFailure());
      }
    } else {
      return const Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, void>> deleteproduct(String id) async {
		if (await networkInfo.isconnected){
			try{
				await remotedatasource.deleteProduct(id);
				return const Right(null);
			} on ServerException{
				return const Left(ServerFailure());
			}
		} else{
			return const Left(ServerFailure());
		}
  }

  @override
  Future<Either<Failure, Product>> updateproduct(Product product) async {
    if (await networkInfo.isconnected) {
      try {
        final result =
            await remotedatasource.updateProduct(changeToProductModel(product));
        return Right(changetoEntity(result));
      } on ServerException {
        return const Left(ServerFailure());
      }
    } else {
      return const Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Product>>> viewallproducts() async {
		if(await networkInfo.isconnected){
			try{
				final temp = await remotedatasource.viewAll();
				final result = temp.map(changetoEntity).toList();
				return Right(result);
			} on ServerException{
				return const Left(ServerFailure());
			}
		} else{
			return const Left(ServerFailure());
		}
  }

  @override
  Future<Either<Failure, Product>> viewproduct(String id) async {
    if (await networkInfo.isconnected) {
      try {
        final remotedata = await remotedatasource.viewProduct(id);
        localdatasource.cacheProduct(remotedata);
        return Right(changetoEntity(remotedata));
      } on ServerException {
        return const Left(ServerFailure());
      }
    } else {
      try {
        final localdata = await localdatasource.getLastProductModel();
        return Right(changetoEntity(localdata));
      } on CacheException {
        return const Left(CacheFailure());
      }
    }
  }
}
