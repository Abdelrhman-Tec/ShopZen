import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_app/features/products/data/models/product_card_model.dart';
import 'package:my_app/features/search/data/repositories/search_repositories.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepository repository;

  SearchCubit({required this.repository}) : super(SearchInitial());

  Future<void> searchProducts(String query) async {
    emit(SearchLoading());
    try {
      final results = await repository.search(query);
      emit(SearchLoaded(results: results));
    } catch (e) {
      emit(SearchError(message: e.toString()));
    }
  }
}
