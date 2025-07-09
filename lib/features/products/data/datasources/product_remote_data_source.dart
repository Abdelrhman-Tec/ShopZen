import 'package:dio/dio.dart';

class ProductRemoteDataSource {
  final Dio dio;

  ProductRemoteDataSource({required this.dio});

  Future<Map<String, dynamic>> getAllProducts() async {
    final response = await dio.get('https://dummyjson.com/products');
    return response.data;
  }

  Future<Map<String, dynamic>> sortByProducts(bool asc) async {
    final sortParam = asc ? 'asc' : 'desc';
    final response =
        await dio.get('https://dummyjson.com/products?sort=$sortParam');
    return response.data;
  }
}
