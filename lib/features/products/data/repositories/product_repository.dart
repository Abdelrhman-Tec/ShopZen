import 'package:my_app/features/products/data/datasources/product_remote_data_source.dart';
import 'package:my_app/features/products/data/models/product_card_model.dart';

class ProductRepository {
  final ProductRemoteDataSource productRemoteDataSource;

  ProductRepository({required this.productRemoteDataSource});

  Future<List<ProductModel>> getAllProducts() async {
    try {
      final json = await productRemoteDataSource.getAllProducts();
      final productList = ProductCardModel.fromJson(json);
      return productList.products;
    } catch (e) {
      throw Exception('Failed to load products: $e');
    }
  }

  Future<ProductCardModel> sortByProducts(bool sortAsc) async {
    final response = await productRemoteDataSource.sortByProducts(sortAsc);
    return ProductCardModel.fromJson(response);
  }
}
