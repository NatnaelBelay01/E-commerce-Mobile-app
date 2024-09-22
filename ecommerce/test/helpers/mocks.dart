import 'package:ecommerce/core/network_info.dart';
import 'package:mockito/annotations.dart';
import 'package:ecommerce/features/domain/repository/repositories.dart';
import 'package:ecommerce/features/data/datasource/local_data_source.dart';
import 'package:ecommerce/features/data/datasource/remote_data_source.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
@GenerateMocks([
  ProductRepositories,
  ProductRemoteDataSource,
  ProductLocalDataSource,
  NetworkInfo,
  InternetConnectionChecker,
	SharedPreferences,
	http.Client,
])
void main() {}
