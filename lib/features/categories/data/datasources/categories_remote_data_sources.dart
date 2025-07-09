import 'package:dio/dio.dart';

class CategoriesRemoteDataSources {
  final Dio dio;
  CategoriesRemoteDataSources({required this.dio});

  Future<List<String>> getAllCategories() async {
    Response response =
        await dio.get("https://dummyjson.com/products/category-list");
    return List<String>.from(response.data);
  }
}
