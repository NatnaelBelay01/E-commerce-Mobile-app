import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/exception.dart';
import 'package:ecommerce/core/failure.dart';
import 'package:ecommerce/features/data/models/product_model.dart';
import 'package:ecommerce/features/domain/entities/productentity.dart';
import 'package:mockito/mockito.dart';

import 'package:ecommerce/features/data/repositories/repositories_imp.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/mocks.mocks.dart';

void main() {
  late ProductRepositoriesImp productrepository;
  late MockProductRemoteDataSource remoteDataSource;
  late MockProductLocalDataSource localDataSource;
  late MockNetworkInfo networkInfo;
  const ProductModel productModel = ProductModel(
      id: '1', name: '3', description: '3', price: 3, imageUrl: '3');
  const Product product =
      Product(id: '1', name: '3', description: '3', price: 3, imageUrl: '3');

  setUp(() {
    remoteDataSource = MockProductRemoteDataSource();
    localDataSource = MockProductLocalDataSource();
    networkInfo = MockNetworkInfo();
    productrepository = ProductRepositoriesImp(
      networkInfo: networkInfo,
      localdatasource: localDataSource,
      remotedatasource: remoteDataSource,
    );
  });

  test('should check if the device is online when any usecase is called',
      () async {
    when(networkInfo.isconnected).thenAnswer((_) async => true);
    when(remoteDataSource.viewProduct(any))
        .thenAnswer((_) async => productModel);
    when(localDataSource.cacheProduct(any))
        .thenAnswer((_) async => productModel);
    productrepository.viewproduct('1');
    verify(networkInfo.isconnected);
  });
  group('should perform tests when the device is online', () {
    setUp(() {
      when(remoteDataSource.viewProduct(any))
          .thenAnswer((_) async => productModel);
      when(networkInfo.isconnected).thenAnswer((_) async => true);
      when(localDataSource.cacheProduct(any))
          .thenAnswer((_) async => productModel);
    });
    test('should return a remote data when the call to the api is successfull',
        () async {
      final result = await productrepository.viewproduct('1');
      expect(result, equals(const Right(product)));
    });

    test('should cache data locally when the call to the api is successfull',
        () async {
      await productrepository.viewproduct('1');
      verify(remoteDataSource.viewProduct('1'));
      verify(localDataSource.cacheProduct(productModel));
    });

    test(
        'should return server Failure when the call to the server returns a server exception',
        () async {
      when(remoteDataSource.viewProduct(any)).thenThrow(ServerException());
      final result = await productrepository.viewproduct('1');
      verify(remoteDataSource.viewProduct('1'));
      verifyZeroInteractions(localDataSource);
      expect(result, const Left(ServerFailure()));
    });
  });

  group('should perform tests when the device is offline', () {
    setUp(() {
      when(networkInfo.isconnected).thenAnswer((_) async => false);
    });
    test('should return last locally cached produt', () async {
      when(localDataSource.getLastProductModel())
          .thenAnswer((_) async => productModel);
      when(remoteDataSource.viewProduct(any)).thenThrow(ServerException());
      final result = await productrepository.viewproduct('01');
      expect(result, equals(const Right(product)));
      verifyZeroInteractions(remoteDataSource);
    });
  });

  group('tests for create product', () {
    test('should check if the device is online when any usecase is called',
        () async {
      when(networkInfo.isconnected).thenAnswer((_) async => true);
      when(remoteDataSource.createProduct(any))
          .thenAnswer((_) async => productModel);
      productrepository.createproduct(product);
      verify(networkInfo.isconnected);
    });
    group('should perform tests when the device is online', () {
      setUp(() {
        when(remoteDataSource.createProduct(any))
            .thenAnswer((_) async => productModel);
        when(networkInfo.isconnected).thenAnswer((_) async => true);
      });
      test(
          'should return a remote data when the call to the api is successfull',
          () async {
        final result = await productrepository.createproduct(product);
        expect(result, equals(const Right(product)));
      });


      test(
          'should return server Failure when the call to the server returns a server exception',
          () async {
        when(remoteDataSource.createProduct(any)).thenThrow(ServerException());
        final result = await productrepository.createproduct(product);
        verify(remoteDataSource.createProduct(productModel));
        expect(result, const Left(ServerFailure()));
      });
    });

  });

  group('tests for update product', () {
    test('should check if the device is online when any usecase is called',
        () async {
      when(networkInfo.isconnected).thenAnswer((_) async => true);
      when(remoteDataSource.updateProduct(any))
          .thenAnswer((_) async => productModel);
      productrepository.updateproduct(product);
      verify(networkInfo.isconnected);
    });
    group('should perform tests when the device is online', () {
      setUp(() {
        when(remoteDataSource.updateProduct(any))
            .thenAnswer((_) async => productModel);
        when(networkInfo.isconnected).thenAnswer((_) async => true);
      });
      test(
          'should return a remote data when the call to the api is successfull',
          () async {
        final result = await productrepository.updateproduct(product);
        expect(result, equals(const Right(product)));
      });


      test(
          'should return server Failure when the call to the server returns a server exception',
          () async {
        when(remoteDataSource.updateProduct(any)).thenThrow(ServerException());
        final result = await productrepository.updateproduct(product);
        verify(remoteDataSource.updateProduct(productModel));
        expect(result, const Left(ServerFailure()));
      });
    });

  });
  group('tests for delete product', () {
    test('should check if the device is online when any usecase is called',
        () async {
      when(networkInfo.isconnected).thenAnswer((_) async => true);
      when(remoteDataSource.deleteProduct(any))
          .thenAnswer((_) async => productModel);
      productrepository.deleteproduct('1');
      verify(networkInfo.isconnected);
    });
    group('should perform tests when the device is online', () {
      setUp(() {
        when(remoteDataSource.deleteProduct(any))
            .thenAnswer((_) async => productModel);
        when(networkInfo.isconnected).thenAnswer((_) async => true);
      });
      test(
          'should return a remote data when the call to the api is successfull',
          () async {
        final result = await productrepository.deleteproduct('1');
        expect(result, equals(const Right(null)));
      });


      test(
          'should return server Failure when the call to the server returns a server exception',
          () async {
        when(remoteDataSource.deleteProduct(any)).thenThrow(ServerException());
        final result = await productrepository.deleteproduct('1');
        verify(remoteDataSource.deleteProduct('1'));
        expect(result, const Left(ServerFailure()));
      });
    });

  });
}
