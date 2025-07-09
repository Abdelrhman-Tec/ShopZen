import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:my_app/core/utils/app_colors.dart';
import 'package:my_app/core/utils/assets.dart';
import 'package:my_app/core/widget/custom_app_bar.dart';
import 'package:my_app/features/products/data/models/product_card_model.dart';
import 'package:my_app/generated/l10n.dart';

import 'package:my_app/features/product_details/presentation/screens/product_details_screen.dart';
import 'package:my_app/features/products/presentation/widgets/product_card_item.dart';
import 'package:my_app/features/saved_items/presentation/cubit/saved_items_cubit.dart';
import 'package:my_app/features/saved_items/presentation/cubit/saved_items_state.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        namePage: S.current.savedItems,
        showButton: false,
      ),
      body: BlocBuilder<SavedCubit, SavedState>(
        builder: (context, state) {
          if (state is SavedInitial) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is SavedError) {
            return Center(child: Text(state.message));
          }

          if (state is SavedLoaded) {
            final savedProducts = state.savedItems;

            if (savedProducts.isEmpty) {
              return _buildEmptyState(context);
            }

            return _buildGridView(context, savedProducts);
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Assets.assetsIconsSavedIcon,
            color: AppColors.myGeryColor,
            width: 100,
          ),
          const SizedBox(height: 16),
          Text(
            S.of(context).savedNoSavedItems,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildGridView(
      BuildContext context, List<ProductModel> savedProducts) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: savedProducts.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 20,
        childAspectRatio: 1 / 2,
      ),
      itemBuilder: (context, index) {
        final product = savedProducts[index];
        return ProductCardItem(
          showButtonSaved: false,
          productCardModel: product,
          ontap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => ProductDetailsScreen(productModel: product),
              ),
            );
          },
        );
      },
    );
  }
}
