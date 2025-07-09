import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/features/product_details/presentation/screens/product_details_screen.dart';
import 'package:my_app/features/products/presentation/cubit/product_cubit.dart';
import 'package:my_app/features/products/presentation/widgets/product_card_item.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        switch (state) {
          case ProductLoading():
            return Center(child: Image.asset('assets/logo/loading.gif'));

          case ProductLoaded():
            final products = state.products;
            return GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 20,
                childAspectRatio: 1 / 2,
              ),
              itemBuilder: (context, index) {
                return ProductCardItem(
                  productCardModel: products[index],
                  ontap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductDetailsScreen(
                      productModel: products[index],
                    ),
                  )),
                );
              },
            );

          case ProductError():
            return Center(child: Text(state.message));

          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
