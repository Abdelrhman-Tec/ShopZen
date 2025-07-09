import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/features/products/data/models/product_card_model.dart';
import 'package:my_app/features/saved_items/presentation/cubit/saved_items_state.dart';

class SavedCubit extends Cubit<SavedState> {
  final List<ProductModel> _savedItems = [];

  SavedCubit() : super(SavedInitial()) {
    emit(SavedLoaded(savedItems: []));
  }

  void addToSaved(ProductModel product) {
    _savedItems.add(product);
    _emitUpdatedState();
  }

  void removeFromSaved(ProductModel product) {
    _savedItems.remove(product);
    _emitUpdatedState();
  }

  void clearSaved() {
    _savedItems.clear();
    _emitUpdatedState();
  }

  void _emitUpdatedState() {
    emit(SavedLoaded(savedItems: List.from(_savedItems)));
  }
}
