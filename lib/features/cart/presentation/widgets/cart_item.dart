import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/core/utils/app_colors.dart';
import 'package:my_app/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:my_app/features/products/data/models/product_card_model.dart';

class CartItem extends StatelessWidget {
  final ProductModel product;

  const CartItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.network(
          product.images[0],
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
        title: Text(
          product.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(
              product.description,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: AppColors.myGeryColor),
            ),
            const SizedBox(height: 8),
            Text(
              '\$${product.price}',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        trailing: IconButton(
          onPressed: () {
            context.read<CartCubit>().removeProductToCart(product);
          },
          icon: Icon(Icons.delete, color: AppColors.myRedColor),
        ),
      ),
    );
  }
}
