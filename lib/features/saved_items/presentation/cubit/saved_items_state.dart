import 'package:my_app/features/products/data/models/product_card_model.dart';

abstract class SavedState  {

}

class SavedInitial extends SavedState {}

class SavedLoading extends SavedState {}

class SavedLoaded extends SavedState {
  final List<ProductModel> savedItems;

  SavedLoaded({required this.savedItems});
}

class SavedError extends SavedState {
  final String message;

  SavedError({required this.message});

}
