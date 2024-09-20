// Mocks generated by Mockito 5.4.4 from annotations
// in ecommerce/test/helpers/mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:dartz/dartz.dart' as _i2;
import 'package:ecommerce/core/failure.dart' as _i6;
import 'package:ecommerce/core/network_info.dart' as _i10;
import 'package:ecommerce/features/data/datasource/local_data_source.dart'
    as _i9;
import 'package:ecommerce/features/data/datasource/remote_data_source.dart'
    as _i8;
import 'package:ecommerce/features/data/models/product_model.dart' as _i3;
import 'package:ecommerce/features/domain/entities/productentity.dart' as _i7;
import 'package:ecommerce/features/domain/repository/repositories.dart' as _i4;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i11;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeProductModel_1 extends _i1.SmartFake implements _i3.ProductModel {
  _FakeProductModel_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDuration_2 extends _i1.SmartFake implements Duration {
  _FakeDuration_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ProductRepositories].
///
/// See the documentation for Mockito's code generation for more information.
class MockProductRepositories extends _i1.Mock
    implements _i4.ProductRepositories {
  MockProductRepositories() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.Either<_i6.Failure, _i7.Product>> viewproduct(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #viewproduct,
          [id],
        ),
        returnValue: _i5.Future<_i2.Either<_i6.Failure, _i7.Product>>.value(
            _FakeEither_0<_i6.Failure, _i7.Product>(
          this,
          Invocation.method(
            #viewproduct,
            [id],
          ),
        )),
      ) as _i5.Future<_i2.Either<_i6.Failure, _i7.Product>>);

  @override
  _i5.Future<_i2.Either<_i6.Failure, List<_i7.Product>>> viewallproducts() =>
      (super.noSuchMethod(
        Invocation.method(
          #viewallproducts,
          [],
        ),
        returnValue:
            _i5.Future<_i2.Either<_i6.Failure, List<_i7.Product>>>.value(
                _FakeEither_0<_i6.Failure, List<_i7.Product>>(
          this,
          Invocation.method(
            #viewallproducts,
            [],
          ),
        )),
      ) as _i5.Future<_i2.Either<_i6.Failure, List<_i7.Product>>>);

  @override
  _i5.Future<_i2.Either<_i6.Failure, _i7.Product>> createproduct(
          _i7.Product? product) =>
      (super.noSuchMethod(
        Invocation.method(
          #createproduct,
          [product],
        ),
        returnValue: _i5.Future<_i2.Either<_i6.Failure, _i7.Product>>.value(
            _FakeEither_0<_i6.Failure, _i7.Product>(
          this,
          Invocation.method(
            #createproduct,
            [product],
          ),
        )),
      ) as _i5.Future<_i2.Either<_i6.Failure, _i7.Product>>);

  @override
  _i5.Future<_i2.Either<_i6.Failure, void>> deleteproduct(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteproduct,
          [id],
        ),
        returnValue: _i5.Future<_i2.Either<_i6.Failure, void>>.value(
            _FakeEither_0<_i6.Failure, void>(
          this,
          Invocation.method(
            #deleteproduct,
            [id],
          ),
        )),
      ) as _i5.Future<_i2.Either<_i6.Failure, void>>);

  @override
  _i5.Future<_i2.Either<_i6.Failure, _i7.Product>> updateproduct(
          _i7.Product? product) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateproduct,
          [product],
        ),
        returnValue: _i5.Future<_i2.Either<_i6.Failure, _i7.Product>>.value(
            _FakeEither_0<_i6.Failure, _i7.Product>(
          this,
          Invocation.method(
            #updateproduct,
            [product],
          ),
        )),
      ) as _i5.Future<_i2.Either<_i6.Failure, _i7.Product>>);
}

/// A class which mocks [ProductRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockProductRemoteDataSource extends _i1.Mock
    implements _i8.ProductRemoteDataSource {
  MockProductRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i3.ProductModel> createProduct(_i3.ProductModel? product) =>
      (super.noSuchMethod(
        Invocation.method(
          #createProduct,
          [product],
        ),
        returnValue: _i5.Future<_i3.ProductModel>.value(_FakeProductModel_1(
          this,
          Invocation.method(
            #createProduct,
            [product],
          ),
        )),
      ) as _i5.Future<_i3.ProductModel>);

  @override
  _i5.Future<_i3.ProductModel> updateProduct(_i3.ProductModel? product) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateProduct,
          [product],
        ),
        returnValue: _i5.Future<_i3.ProductModel>.value(_FakeProductModel_1(
          this,
          Invocation.method(
            #updateProduct,
            [product],
          ),
        )),
      ) as _i5.Future<_i3.ProductModel>);

  @override
  _i5.Future<_i3.ProductModel> deleteProduct(String? productid) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteProduct,
          [productid],
        ),
        returnValue: _i5.Future<_i3.ProductModel>.value(_FakeProductModel_1(
          this,
          Invocation.method(
            #deleteProduct,
            [productid],
          ),
        )),
      ) as _i5.Future<_i3.ProductModel>);

  @override
  _i5.Future<_i3.ProductModel> viewProduct(String? productid) =>
      (super.noSuchMethod(
        Invocation.method(
          #viewProduct,
          [productid],
        ),
        returnValue: _i5.Future<_i3.ProductModel>.value(_FakeProductModel_1(
          this,
          Invocation.method(
            #viewProduct,
            [productid],
          ),
        )),
      ) as _i5.Future<_i3.ProductModel>);

  @override
  _i5.Future<List<_i3.ProductModel>> viewAll() => (super.noSuchMethod(
        Invocation.method(
          #viewAll,
          [],
        ),
        returnValue:
            _i5.Future<List<_i3.ProductModel>>.value(<_i3.ProductModel>[]),
      ) as _i5.Future<List<_i3.ProductModel>>);
}

/// A class which mocks [ProductLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockProductLocalDataSource extends _i1.Mock
    implements _i9.ProductLocalDataSource {
  MockProductLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i3.ProductModel> getLastProductModel() => (super.noSuchMethod(
        Invocation.method(
          #getLastProductModel,
          [],
        ),
        returnValue: _i5.Future<_i3.ProductModel>.value(_FakeProductModel_1(
          this,
          Invocation.method(
            #getLastProductModel,
            [],
          ),
        )),
      ) as _i5.Future<_i3.ProductModel>);

  @override
  _i5.Future<_i3.ProductModel> cacheProduct(_i3.ProductModel? productmodel) =>
      (super.noSuchMethod(
        Invocation.method(
          #cacheProduct,
          [productmodel],
        ),
        returnValue: _i5.Future<_i3.ProductModel>.value(_FakeProductModel_1(
          this,
          Invocation.method(
            #cacheProduct,
            [productmodel],
          ),
        )),
      ) as _i5.Future<_i3.ProductModel>);
}

/// A class which mocks [NetworkInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetworkInfo extends _i1.Mock implements _i10.NetworkInfo {
  MockNetworkInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<bool> get isconnected => (super.noSuchMethod(
        Invocation.getter(#isconnected),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
}

/// A class which mocks [InternetConnectionChecker].
///
/// See the documentation for Mockito's code generation for more information.
class MockInternetConnectionChecker extends _i1.Mock
    implements _i11.InternetConnectionChecker {
  MockInternetConnectionChecker() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Duration get checkInterval => (super.noSuchMethod(
        Invocation.getter(#checkInterval),
        returnValue: _FakeDuration_2(
          this,
          Invocation.getter(#checkInterval),
        ),
      ) as Duration);

  @override
  _i5.Future<bool> get hasConnection => (super.noSuchMethod(
        Invocation.getter(#hasConnection),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);

  @override
  _i5.Future<_i11.InternetConnectionStatus> get connectionStatus =>
      (super.noSuchMethod(
        Invocation.getter(#connectionStatus),
        returnValue: _i5.Future<_i11.InternetConnectionStatus>.value(
            _i11.InternetConnectionStatus.connected),
      ) as _i5.Future<_i11.InternetConnectionStatus>);

  @override
  _i5.Stream<_i11.InternetConnectionStatus> get onStatusChange =>
      (super.noSuchMethod(
        Invocation.getter(#onStatusChange),
        returnValue: _i5.Stream<_i11.InternetConnectionStatus>.empty(),
      ) as _i5.Stream<_i11.InternetConnectionStatus>);
}
