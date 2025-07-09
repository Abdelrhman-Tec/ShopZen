import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:my_app/config/cache/cache_helper.dart';
import 'package:my_app/config/theme/cubit/theme_cubit.dart';

import 'package:my_app/features/products/data/datasources/product_remote_data_source.dart';
import 'package:my_app/features/products/data/repositories/product_repository.dart';
import 'package:my_app/features/products/presentation/cubit/product_cubit.dart';

import 'package:my_app/features/categories/data/datasources/categories_remote_data_sources.dart';
import 'package:my_app/features/categories/presentation/cubit/categories_cubit.dart';

import 'package:my_app/features/search/data/data_source/search_remote_data_source.dart';
import 'package:my_app/features/search/data/repositories/search_repositories.dart';
import 'package:my_app/features/search/presentation/cubit/search_cubit.dart';


final getIt = GetIt.instance;

void setupDependencyInjection() {
  //------------------- Dio -------------------//
  getIt.registerLazySingleton<Dio>(() => Dio());

  //------------------- CacheHelper -------------------//
  getIt.registerSingleton<CacheHelper>(CacheHelper());

  //------------------- Product Feature -------------------//
  getIt.registerSingleton<ProductRemoteDataSource>(
    ProductRemoteDataSource(dio: getIt<Dio>()),
  );

  getIt.registerSingleton<ProductRepository>(
    ProductRepository(
      productRemoteDataSource: getIt<ProductRemoteDataSource>(),
    ),
  );

  getIt.registerSingleton<ProductCubit>(
    ProductCubit(getIt<ProductRepository>()),
  );

  //------------------- Categories Feature -------------------//
  getIt.registerSingleton<CategoriesRemoteDataSources>(
    CategoriesRemoteDataSources(dio: getIt<Dio>()),
  );

  getIt.registerSingleton<CategoriesCubit>(
    CategoriesCubit(getIt<CategoriesRemoteDataSources>()),
  );

  //------------------- Search Feature -------------------//
  getIt.registerSingleton<SearchRemoteDataSource>(
    SearchRemoteDataSource(dio: getIt<Dio>()),
  );

  getIt.registerSingleton<SearchRepository>(
    SearchRepository(remote: getIt<SearchRemoteDataSource>()),
  );

  getIt.registerSingleton<SearchCubit>(
    SearchCubit(repository: getIt<SearchRepository>()),
  );

  //------------------- Theme & Language -------------------//
  getIt.registerLazySingleton<ThemeCubit>(
    () => ThemeCubit(cacheHelper: getIt<CacheHelper>()),
  );
}
