import 'dart:convert';

import 'package:ecommerce/core/exception.dart';
import 'package:ecommerce/features/data/datasource/local_data_source.dart';
import 'package:ecommerce/features/data/models/product_model.dart';

import '../../../fixtures/fixture.dart';
import '../../../helpers/mocks.mocks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

void main() {
  late MockSharedPreferences mockSharedPreferences;
  late ProductLocalDataSource localdatasource;
  ProductModel productModel = const ProductModel(
    id: "01",
    name: "shoe",
    description: "a shoe",
    imageUrl: "img/b.jpg",
    price: 34,
  );

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    localdatasource =
        ProductLocalDataSourceImp(sharedpreferences: mockSharedPreferences);
  });

  test('should return a product model when there is one in the cache',
      () async {
    when(mockSharedPreferences.getString(any))
        .thenReturn(fixture('productjson.json'));
    final result = await localdatasource.getLastProductModel();
    expect(result, equals(productModel));
  });

  test('should throw a cache exception when there is nothing in the cache', () {
    when(mockSharedPreferences.getString(any)).thenReturn(null);
    final result = localdatasource.getLastProductModel;
    expect(() => result(), throwsA(const TypeMatcher<CacheException>()));
  });

  group('cache', () {
    test('should call the shared preference method to cache data', () async {
			when(mockSharedPreferences.setString(any, any)).thenAnswer((_) async => true);
      localdatasource.cacheProduct(productModel);
      final expectedString = json.encode(productModel.toJson());
      verify(mockSharedPreferences.setString('CACHE_PRODUCT', expectedString));
    });
  });
}
