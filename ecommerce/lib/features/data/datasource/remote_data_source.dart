import 'package:ecommerce/features/data/models/product_model.dart';

abstract class ProductRemoteDataSource{
	Future<ProductModel> createProduct(ProductModel product);
	Future<ProductModel> updateProduct(ProductModel product);
	Future<ProductModel> deleteProduct(String productid);
	Future<ProductModel> viewProduct(String productid);
	Future<List<ProductModel>> viewAll();
}
