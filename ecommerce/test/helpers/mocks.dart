import 'package:ecommerce/core/network_info.dart';
import 'package:mockito/annotations.dart';
import 'package:ecommerce/features/domain/repository/repositories.dart';
import 'package:ecommerce/features/data/datasource/local_data_source.dart';
import 'package:ecommerce/features/data/datasource/remote_data_source.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@GenerateMocks([
  ProductRepositories,
  ProductRemoteDataSource,
  ProductLocalDataSource,
  NetworkInfo,
  InternetConnectionChecker,
])
void main() {}
