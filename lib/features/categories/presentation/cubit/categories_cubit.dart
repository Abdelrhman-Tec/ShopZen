import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_app/features/categories/data/datasources/categories_remote_data_sources.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  final CategoriesRemoteDataSources categoriesRemoteDataSources;
  CategoriesCubit(
    this.categoriesRemoteDataSources,
  ) : super(CategoriesInitial());

  Future<void> getAllCategories() async {
    emit(CategoriesLoading());
    try {
      final categories = await categoriesRemoteDataSources.getAllCategories();
      emit(CategoriesLoaded(categories: categories));
    } catch (e) {
      emit(CategoriesError(message: e.toString()));
    }
  }
}
