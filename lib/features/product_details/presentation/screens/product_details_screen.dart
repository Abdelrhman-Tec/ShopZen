import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/core/utils/app_colors.dart';
import 'package:my_app/core/widget/custom_app_bar.dart';
import 'package:my_app/core/widget/custom_button_widget.dart';
import 'package:my_app/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:my_app/features/products/data/models/product_card_model.dart';
import 'package:my_app/generated/l10n.dart';

class ProductDetailsScreen extends StatefulWidget {
  final ProductModel productModel;

  const ProductDetailsScreen({super.key, required this.productModel});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int selectedIndex = 0;

  static const colorList = [
    {"color": 0xffD03D3D},
    {"color": 0xff8E3AD0},
    {"color": 0xff2E2626},
    {"color": 0xff3A5BCE},
    {"color": 0xffCA38BB},
  ];

  @override
  Widget build(BuildContext context) {
    final images = widget.productModel.images;
    final product = widget.productModel;

    return Scaffold(
      appBar: CustomAppBar(namePage: S.current.productDetails),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          Image.network(
            images[selectedIndex],
            height: 250,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 20),
          _ImageThumbnails(
            images: images,
            selectedIndex: selectedIndex,
            onTap: (index) => setState(() => selectedIndex = index),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              product.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${product.price}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Text(
                  "${product.rating} ★ (${product.rating})",
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              S.current.productDetails,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(product.description),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              S.current.productSelectColor,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: _ColorRow(colorList: colorList),
          ),
          const SizedBox(height: 27),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomButtonWidget(
              ontap: () {
                context.read<CartCubit>().addProductToCart(product);
              },
              width: 200,
              height: 50,
              name: S.of(context).productAddToCart,
              fontSize: 16,
              color: AppColors.secondryColor,
              showIcon: true,
            ),
          ),
          const SizedBox(height: 70),
        ],
      ),
    );
  }
}

class _ImageThumbnails extends StatelessWidget {
  final List<String> images;
  final int selectedIndex;
  final Function(int) onTap;

  const _ImageThumbnails({
    required this.images,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: images.length,
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => onTap(index),
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: selectedIndex == index
                      ? AppColors.primaryColor
                      : Colors.grey,
                  width: 0.5,
                ),
                image: DecorationImage(
                  image: NetworkImage(images[index]),
                  fit: BoxFit.contain,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _ColorRow extends StatelessWidget {
  final List<Map<String, dynamic>> colorList;

  const _ColorRow({required this.colorList});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: colorList.map((colorMap) {
        return Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: Color(colorMap['color']),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        );
      }).toList(),
    );
  }
}
