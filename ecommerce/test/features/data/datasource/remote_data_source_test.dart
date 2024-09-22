import 'package:ecommerce/core/exception.dart';
import 'package:ecommerce/features/data/models/product_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ecommerce/features/data/datasource/remote_data_source.dart';
import 'package:http/http.dart' as http;
import '../../../fixtures/fixture.dart';
import '../../../helpers/mocks.mocks.dart';

void main() {
  late MockClient mockClient;
  late ProductRemoteDataSource remoteDataSource;
  late ProductModel productModel = const ProductModel(
      id: "6672776eb905525c145fe0bb",
      name: "Anime website",
      description: "Explore anime characters.",
      price: 123,
      imageUrl:
          "https://res.cloudinary.com/g5-mobile-track/image/upload/v1718777711/images/clmxnecvavxfvrz9by4w.jpg");

  setUp(() {
    mockClient = MockClient();
    remoteDataSource = ProductRemoteDataSourceImp(client: mockClient);
  });
  group('for view product', () {
    test('should perform a GET request when view product is called', () async {
      when(mockClient.get(
        any,
        headers: anyNamed('headers'),
      )).thenAnswer(
          (_) async => http.Response(fixture('get_response.json'), 200));
      remoteDataSource.viewProduct("6672776eb905525c145fe0bb");
      verify(
        mockClient.get(
            Uri.parse(
                "https://g5-flutter-learning-path-be.onrender.com/api/v1/products/6672776eb905525c145fe0bb"),
            headers: {'Content-Type': 'application/json'}),
      );
    });

    test(
        'should return a product model when the call to the api is successfull',
        () async {
      when(mockClient.get(any, headers: anyNamed('headers'))).thenAnswer(
          (_) async => http.Response(fixture('get_response.json'), 200));
      final result =
          await remoteDataSource.viewProduct("6672776eb905525c145fe0bb");
      expect(result, equals(productModel));
    });

    test('should throw server exception when the response code is 404',
        () async {
      when(mockClient.get(any, headers: anyNamed('headers')))
          .thenAnswer((_) async => http.Response('something went wrong', 404));

      final call = remoteDataSource.viewProduct;
      expect(() => call("6672776eb905525c145fe0bb"),
          throwsA(const TypeMatcher<ServerException>()));
    });
  });
}
