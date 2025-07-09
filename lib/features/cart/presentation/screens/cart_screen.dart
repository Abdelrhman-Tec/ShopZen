import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/core/utils/app_colors.dart';
import 'package:my_app/core/utils/assets.dart';
import 'package:my_app/core/widget/custom_app_bar.dart';
import 'package:my_app/core/widget/custom_button_widget.dart';
import 'package:my_app/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:my_app/features/cart/presentation/cubit/cart_state.dart';
import 'package:my_app/features/cart/presentation/widgets/cart_item.dart';
import 'package:my_app/features/checkout/presentation/screens/checout_screen.dart';
import 'package:my_app/generated/l10n.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static const double deliveryCost = 25.0;
  static const double discount = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showButton: false,
        namePage: S.of(context).cartMyCart,
      ),
      body: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          if (state is CartUpdate && state.prdouct.isNotEmpty) {
            final subtotal = state.totalPrice;
            return Column(
              children: [
                SizedBox(
                  height: 400,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    padding: const EdgeInsets.all(16),
                    itemCount: state.prdouct.length,
                    itemBuilder: (context, index) {
                      final item = state.prdouct[index];
                      return CartItem(product: item);
                    },
                  ),
                ),
                _buildSummarySection(subtotal, deliveryCost, discount),
                const SizedBox(
                  height: 20,
                ),
                CustomButtonWidget(
                  ontap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => CheckoutScreen(
                            subtotal: subtotal,
                            delivery: deliveryCost,
                            discount: discount),
                      ),
                    );
                  },
                  width: 350,
                  height: 50,
                  name: S.current.cartGoToCheckout,
                  fontSize: 20,
                  color: AppColors.primaryColor,
                  showIcon: false,
                )
              ],
            );
          } else {
            return _buildEmptyCart(context);
          }
        },
      ),
    );
  }

  Widget _buildSummarySection(
      double subtotal, double delivery, double discount) {
    final total = subtotal + delivery - discount;

    return Container(
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _buildPriceRow(S.current.cartSubTotal, subtotal),
          const SizedBox(height: 8),
          _buildPriceRow(S.current.cartDeliveryFee, delivery),
          const SizedBox(height: 8),
          _buildPriceRow(S.current.cartDiscount, discount),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Divider(
              color: Colors.grey,
              height: 1,
              thickness: 0.8,
              indent: 4,
              endIndent: 4,
            ),
          ),
          _buildPriceRow(S.current.cartTotal, total,
              isBold: true, fontSize: 18),
        ],
      ),
    );
  }

  Widget _buildPriceRow(String label, double value,
      {bool isBold = false, double fontSize = 16}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            color: Colors.black87,
          ),
        ),
        Text(
          "\$${value.toStringAsFixed(2)}",
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  Widget _buildEmptyCart(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.assetsIconsCartIsempty,
              color: AppColors.myGeryColor,
              width: 100,
            ),
            const SizedBox(height: 16),
            Text(
              S.of(context).cartEmptyCart,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
