import 'package:my_app/features/products/data/models/product_card_model.dart';

sealed class CartState {}

final class CartIntial extends CartState {}

final class CartUpdate extends CartState {
  final List<ProductModel> prdouct;
  final double totalPrice;

  CartUpdate({required this.prdouct, required this.totalPrice});
}
