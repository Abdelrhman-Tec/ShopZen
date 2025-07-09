import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_app/features/products/data/models/product_card_model.dart';
import 'package:my_app/features/products/data/repositories/product_repository.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductRepository productRepository;
  ProductCubit(this.productRepository) : super(ProductInitial());

  Future<void> getAllProducts() async {
    emit(ProductLoading());
    try {
      final products = await productRepository.getAllProducts();
      emit(ProductLoaded(products: products));
    } catch (e) {
      print(e.toString());
      emit(ProductError(message: e.toString()));
    }
  }

  void sortProducts(bool isAscending) async {
    emit(ProductLoading());

    try {
      final sortedList = await productRepository.sortByProducts(isAscending);
      emit(ProductLoaded(products: sortedList.products));
    } catch (e) {
      emit(ProductError(message: e.toString()));
    }
  }
}
