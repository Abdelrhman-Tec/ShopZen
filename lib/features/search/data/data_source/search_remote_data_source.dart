import 'package:dio/dio.dart';

class SearchRemoteDataSource {
  final Dio dio;

  SearchRemoteDataSource({required this.dio});

  Future<Map<String, dynamic>> searchProducts({required String query}) async {
    final response = await dio.get(
      'https://dummyjson.com/products/search?q=$query',
    );
    return response.data as Map<String, dynamic>;
  }
}
