import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/config/dependency_injection/dependency_injection.dart';
import 'package:my_app/core/utils/assets.dart';
import 'package:my_app/features/product_details/presentation/screens/product_details_screen.dart';
import 'package:my_app/features/search/presentation/cubit/search_cubit.dart';
import 'package:my_app/generated/l10n.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _controller = TextEditingController();
  String searchQuery = '';

  void _onSearchChanged(String value) {
    setState(() {
      searchQuery = value.trim();
    });
    if (searchQuery.isNotEmpty) {
      getIt<SearchCubit>().searchProducts(searchQuery);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSearchField(),
            const SizedBox(height: 10),
            if (searchQuery.isNotEmpty) _buildSearchResults(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchField() {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        hintText: S.of(context).homeFindItems,
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onChanged: _onSearchChanged,
    );
  }

  Widget _buildSearchResults() {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is SearchLoaded) {
          final results = state.results;
          if (results.isEmpty) {
            return Center(
              child: Image.asset(
                Assets.notFondSearch,
                width: 100,
              ),
            );
          }

          return ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: results.length,
            separatorBuilder: (_, __) => const Divider(),
            itemBuilder: (context, index) {
              final product = results[index];
              return GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) =>
                        ProductDetailsScreen(productModel: product))),
                child: ListTile(
                  leading: Image.network(
                    product.thumbnail,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(product.title),
                  subtitle: Text(
                    product.description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              );
            },
          );
        } else if (state is SearchError) {
          return Center(
            child: SizedBox(
              width: 200,
              child: Text(
                maxLines: 2,
                'خطأ: ${state.message}',
              ),
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
