import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/core/utils/app_colors.dart';
import 'package:my_app/features/products/data/models/product_card_model.dart';
import 'package:my_app/features/saved_items/presentation/cubit/saved_items_cubit.dart';

class ProductCardItem extends StatelessWidget {
  final ProductModel productCardModel;
  final bool? showButtonSaved;
  final Function()? ontap;

  const ProductCardItem({
    super.key,
    required this.productCardModel,
    this.ontap,
    this.showButtonSaved = true,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final cardWidth = size.width * 0.42;
    final imageHeight = size.height * 0.20;

    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: cardWidth,
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 6,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _ProductImage(
                    imagePath: productCardModel.images[0], height: imageHeight),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: _ProductDetails(productCardModel: productCardModel),
                ),
              ],
            ),
            showButtonSaved == true
                ? _FavoriteButton(product: productCardModel)
                : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}

class _ProductImage extends StatelessWidget {
  final String imagePath;
  final double height;

  const _ProductImage({
    required this.imagePath,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
      child: Image.network(
        imagePath.isNotEmpty ? imagePath : 'assets/logo/loading.gif',
        height: height,
        width: double.infinity,
        fit: BoxFit.contain,
        errorBuilder: (context, error, stackTrace) =>
            const Icon(Icons.broken_image),
      ),
    );
  }
}

class _ProductDetails extends StatelessWidget {
  final ProductModel productCardModel;

  const _ProductDetails({required this.productCardModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          productCardModel.title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 6),
        Text(
          productCardModel.price.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 11,
              child: Icon(
                Icons.star,
                color: Colors.white,
                size: 14,
              ),
            ),
            const SizedBox(width: 6),
            Text(
              productCardModel.rating.toString(),
              style: TextStyle(
                color: AppColors.myGeryColor,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _FavoriteButton extends StatefulWidget {
  final ProductModel product;
  const _FavoriteButton({
    required this.product,
  });

  @override
  State<_FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<_FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 8,
      right: 8,
      child: GestureDetector(
        onTap: () {
          setState(() {
            isFavorite = !isFavorite;
          });

          if (isFavorite) {
            context.read<SavedCubit>().addToSaved(widget.product);
          } else {
            context.read<SavedCubit>().removeFromSaved(widget.product);
          }
        },
        child: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ? Colors.red : Colors.black,
            size: 18,
          ),
        ),
      ),
    );
  }
}
