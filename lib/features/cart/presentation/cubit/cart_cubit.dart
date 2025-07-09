import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/features/cart/presentation/cubit/cart_state.dart';
import 'package:my_app/features/products/data/models/product_card_model.dart';

class CartCubit extends Cubit<CartState> {
  final List<ProductModel> _cart = [];
  CartCubit() : super(CartIntial());

  void addProductToCart(ProductModel product) {
    _cart.add(product);
    _emitUpdatedState();
  }

  void removeProductToCart(ProductModel product) {
    _cart.remove(product);
    _emitUpdatedState();
  }

  void clearProductToCart(ProductModel product) {
    _cart.clear();
    _emitUpdatedState();
  }

  void _emitUpdatedState() {
    final total = _cart.fold<double>(
      0.0,
      (sum, item) => sum + item.price,
    );

    emit(CartUpdate(prdouct: List.from(_cart), totalPrice: total));
  }
}
