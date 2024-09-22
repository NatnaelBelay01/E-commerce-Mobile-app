import 'dart:convert';

import 'package:ecommerce/core/exception.dart';
import 'package:ecommerce/features/data/models/product_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ProductLocalDataSource {
  Future<ProductModel> getLastProductModel();
  Future<void> cacheProduct(ProductModel productmodel);
}


class ProductLocalDataSourceImp implements ProductLocalDataSource {
	final SharedPreferences sharedpreferences;

	ProductLocalDataSourceImp({required this.sharedpreferences});

  @override
  Future<void> cacheProduct(ProductModel productmodel) async {
		final expectedString = json.encode(productmodel.toJson());
		sharedpreferences.setString('CACHE_PRODUCT', expectedString);
		return Future.value(null);
  }

  @override
  Future<ProductModel> getLastProductModel() {
		final lastproduct = sharedpreferences.getString('CACHED_PRODUCT');
		if(lastproduct != null){
			return Future.value(ProductModel.fromJson(json.decode(lastproduct)));
		}else{
			throw CacheException();
		}
  }
}
