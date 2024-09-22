import 'dart:convert';
import 'dart:io';
import 'package:http_parser/http_parser.dart';
import 'package:ecommerce/core/exception.dart';
import 'package:ecommerce/features/data/models/product_model.dart';
import 'package:http/http.dart' as http;

abstract class ProductRemoteDataSource {
  Future<ProductModel> createProduct(ProductModel product);
  Future<ProductModel> updateProduct(ProductModel product);
  Future<void> deleteProduct(String productid);
  Future<ProductModel> viewProduct(String productid);
  Future<List<ProductModel>> viewAll();
}

class ProductRemoteDataSourceImp implements ProductRemoteDataSource {
  final http.Client client;
  ProductRemoteDataSourceImp({required this.client});

  @override
  Future<ProductModel> createProduct(ProductModel product) async {
    var request = http.MultipartRequest(
        'POST',
        Uri.parse(
            'https://g5-flutter-learning-path-be.onrender.com/api/v1/products'));
    request.fields['name'] = product.name;
    request.fields['description'] = product.description;
    request.fields['price'] = product.price.toString();
    _addProductImage(request, product.imageUrl);
    try {
      http.StreamedResponse response = await client.send(request);
      if (response.statusCode == 201) {
        final responseString = await response.stream.bytesToString();
        return ProductModel.fromJson(json.decode(responseString)['data']);
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }

  Future<void> _addProductImage(
      http.MultipartRequest request, String imageUrl) async {
    if (imageUrl.isNotEmpty) {
      final imageFile = File(imageUrl);
      if (imageFile.existsSync()) {
        request.files.add(
          await http.MultipartFile.fromPath(
            'image',
            imageUrl,
            contentType: MediaType('image', 'jpg'),
          ),
        );
      } else {
        throw ImageException();
      }
    }
  }

  @override
  Future<void> deleteProduct(String productid) async {
    var response = await client.delete(
      Uri.parse(
          'https://g5-flutter-learning-path-be.onrender.com/api/v1/products/$productid'),
    );
    if (response.statusCode != 200) {
      throw ServerException();
    }
  }

  @override
  Future<ProductModel> updateProduct(ProductModel product) async {
    final jsonBody = json.encode({
      "name": product.name,
      "description": product.description,
      "price": product.price
    });
    final response = await client.put(
        Uri.parse(
            'https://g5-flutter-learning-path-be.onrender.com/api/v2/products/${product.id}'),
        body: jsonBody);
    if (response.statusCode == 200) {
      return ProductModel.fromJson(json.decode(response.body)["data"]);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<ProductModel>> viewAll() async {
    final respose = await client.get(Uri.parse('https://g5-flutter-learning-path-be.onrender.com/api/v2/products/'), headers: {'Content-Type' : 'application/json'});
		if (respose.statusCode == 200){
			var result = json.decode(respose.body)["data"];
			List<ProductModel> productList = result.map<ProductModel>((item) => ProductModel.fromJson(item)).toList();
			return productList;
		}
		else{
			throw ServerException();
		}
  }

  @override
  Future<ProductModel> viewProduct(String productid) async {
    final response = await client.get(
        Uri.parse(
            'https://g5-flutter-learning-path-be.onrender.com/api/v1/products/$productid'),
        headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      return ProductModel.fromJson(json.decode(response.body)["data"]);
    } else {
      throw ServerException();
    }
  }
}
