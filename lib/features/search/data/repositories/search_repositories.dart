import 'package:my_app/features/products/data/models/product_card_model.dart';
import 'package:my_app/features/search/data/data_source/search_remote_data_source.dart';

class SearchRepository {
  final SearchRemoteDataSource remote;

  SearchRepository({required this.remote});

  Future<List<ProductModel>> search(String query) async {
    final json = await remote.searchProducts(query: query);
    final result = ProductCardModel.fromJson(json);
    return result.products;
  }
}
