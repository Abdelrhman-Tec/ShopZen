import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/features/categories/data/models/category_model.dart';
import 'package:my_app/features/categories/presentation/cubit/categories_cubit.dart';
import 'package:my_app/features/categories/presentation/widgets/categories_item.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        switch (state) {
          case CategoriesLoading():
            return Center(
              child: Image.asset('assets/logo/loading.gif'),
            );
          case CategoriesLoaded():
            return Column(
              children: [
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      final item = categoriesData[index];
                      return CategoriesItem(categoryModel: item);
                    },
                    itemCount: categoriesData.length,
                  ),
                ),
              ],
            );
          case CategoriesError():
            return Center(child: Text(state.message));
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
