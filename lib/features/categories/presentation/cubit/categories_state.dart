part of 'categories_cubit.dart';

@immutable
abstract class CategoriesState {}

class CategoriesInitial extends CategoriesState {}

class CategoriesLoading extends CategoriesState {}

class CategoriesLoaded extends CategoriesState {
  final List<String> categories; 

  CategoriesLoaded({required this.categories});
}

class CategoriesError extends CategoriesState {
  final String message;

  CategoriesError({required this.message});
}
