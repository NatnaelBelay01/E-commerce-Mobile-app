import 'dart:convert';

import 'package:ecommerce/features/domain/entities/productentity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fixtures/fixture.dart';
import '../../../helpers/mocks.dart';
import 'package:ecommerce/features/data/models/product_model.dart';

void main() {
  const productmodel = ProductModel(
    id: "01",
    name: "shoe",
    description: "a shoe",
    imageUrl: "img/b.jpg",
    price: 34,
  );

  test('Should verify if product model is a product', () async {
    expect(productmodel, isA<Product>());
  });

  group('FromJson', () {
    test('should return a product model from a json file', () async {
      final Map<String, dynamic> jsonmap =
          json.decode(fixture('productjson.json'));
      final productFromJson = ProductModel.fromJson(jsonmap);
      expect(productFromJson, productmodel);
    });
  });

  group('ToJson', () {
    test('Should return a json from a product model', () {
      final result = productmodel.toJson();
      final Map<String, dynamic> jsonmap =
          json.decode(fixture('productjson.json'));
      expect(result, jsonmap);
    });
  });
}
