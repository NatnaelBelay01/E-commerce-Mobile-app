import 'package:ecommerce/core/network_info.dart';
import 'package:ecommerce/features/data/datasource/local_data_source.dart';
import 'package:ecommerce/features/data/datasource/remote_data_source.dart';
import 'package:ecommerce/features/data/repositories/repositories_imp.dart';
import 'package:ecommerce/features/domain/repository/repositories.dart';
import 'package:ecommerce/features/domain/usecase/createproduct.dart';
import 'package:ecommerce/features/domain/usecase/deleteproduct.dart';
import 'package:ecommerce/features/domain/usecase/updateproduct.dart';
import 'package:ecommerce/features/domain/usecase/viewallproducts.dart';
import 'package:ecommerce/features/domain/usecase/viewproduct.dart';
import 'package:ecommerce/features/presentation/bloc/product_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(
    () => ProductBloc(
      viewProductUseCase: sl(),
      viewAllProductUseCase: sl(),
      updateProductUseCase: sl(),
      deleteProductUseCase: sl(),
      createProductUseCase: sl(),
    ),
  );

  // Use cases

  sl.registerLazySingleton(() => ViewProductUseCase(productrepository: sl()));
  sl.registerLazySingleton(
      () => ViewAllProductUseCase(productrepository: sl()));
  sl.registerLazySingleton(() => UpdateProductUseCase(productrepository: sl()));
  sl.registerLazySingleton(() => DeleteProductUseCase(productrepository: sl()));
  sl.registerLazySingleton(() => CreateProductUseCase(productrepository: sl()));

  //Repository
  sl.registerLazySingleton<ProductRepositories>(
    () => ProductRepositoriesImp(
      localdatasource: sl(),
      remotedatasource: sl(),
      networkInfo: sl(),
    ),
  );

  //data sources

  sl.registerLazySingleton<ProductLocalDataSource>(
    () => ProductLocalDataSourceImp(sharedpreferences: sl()),
  );

  sl.registerLazySingleton<ProductRemoteDataSource>(
    () => ProductRemoteDataSourceImp(client: sl()),
  );

  //core
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImp(internetconnectionchecker: sl()));

  //external
  final sharedpreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedpreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
