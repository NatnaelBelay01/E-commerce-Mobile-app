import 'package:dartz/dartz.dart';
import 'package:ecommerce/features/domain/usecase/deleteproduct.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../helpers/mocks.mocks.dart';

void main() {
  late MockProductRepositories repomock;
  late DeleteProductUseCase deleteproduct;

  setUp(() {
    repomock = MockProductRepositories();
    deleteproduct = DeleteProductUseCase(productrepository: repomock);
  });

  test('should call the repository class when create product is called',
      () async {
    when(repomock.deleteproduct(any))
        .thenAnswer((_) async => const Right(null));
    final result = await deleteproduct('1');
    expect(result, const Right(null));
  });
}
