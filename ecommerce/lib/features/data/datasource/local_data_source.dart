import 'package:ecommerce/features/data/models/product_model.dart';

abstract class ProductLocalDataSource {
  Future<ProductModel> getLastProductModel();
  Future<ProductModel> cacheProduct(ProductModel productmodel);
}
