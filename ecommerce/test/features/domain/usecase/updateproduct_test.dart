import 'package:dartz/dartz.dart';
import 'package:ecommerce/features/domain/entities/productentity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../helpers/mocks.mocks.dart';
import 'package:ecommerce/features/domain/usecase/updateproduct.dart';

void main() {
  late MockProductRepositories repomock;
  late UpdateProductUseCase updateproduct;
  late Product product;

  setUp(() {
    repomock = MockProductRepositories();
    updateproduct = UpdateProductUseCase(productrepository: repomock);
    product = const Product(
        id: '1', name: 'a', description: 'b', price: 3, imageUrl: '44');
  });

  test('should call the repository class when update product is called',
      () async {
    when(repomock.updateproduct(any)).thenAnswer((_) async => Right(product));
    final result = await updateproduct(product);
    expect(result, Right(product));
  });
}
