import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/core/utils/app_colors.dart';
import 'package:my_app/core/utils/assets.dart';
import 'package:my_app/core/widget/custom_app_bar.dart';
import 'package:my_app/core/widget/custom_button_widget.dart';
import 'package:my_app/features/checkout/data/model/checkout_model.dart';
import 'package:my_app/generated/l10n.dart';

class CheckoutScreen extends StatefulWidget {
  final double? subtotal;
  final double? delivery;
  final double? discount;

  const CheckoutScreen(
      {super.key, this.subtotal, this.delivery, this.discount});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(namePage: S.current.checkout),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeaderRow(),
              const SizedBox(height: 20),
              _buildDeliveryAddress(),
              const SizedBox(height: 12),
              const Divider(thickness: 1),
              const SizedBox(height: 12),
              _buildPaymentMethodSection(),
              const SizedBox(height: 20),
              const CardItemWidget(),
              const SizedBox(height: 20),
              const Divider(thickness: 1),
              const SizedBox(height: 14),
              Text(
                S.current.checkoutOrderSummary,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 12),
              _buildSummarySection(
                  widget.subtotal!, widget.delivery!, widget.discount!),
              const SizedBox(height: 20),
              _buildPromoCodeField(),
              const SizedBox(height: 40),
              CustomButtonWidget(
                width: 350,
                height: 50,
                name: S.current.checkoutPlaceOrder,
                fontSize: 20,
                color: AppColors.primaryColor,
                showIcon: false,
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderRow() {
    return Row(
      children: [
        Text(
          S.current.checkoutDeliveryAddress,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        Text(
          S.current.checkoutChange,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }

  Widget _buildDeliveryAddress() {
    return Row(
      children: [
        const SizedBox(width: 10),
        SvgPicture.asset(Assets.assetsIconsLocation),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.current.checkoutHome,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 4),
            const Text(
              '925 S Chugach St #APT 10, Alaska 99645',
              style: TextStyle(
                color: AppColors.myGeryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPaymentMethodSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.checkoutPaymentMethod,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 40,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (_, __) => const SizedBox(width: 6),
            itemCount: paymentMethodList.length,
            itemBuilder: (context, index) {
              final item = paymentMethodList[index];
              final isSelected = selectedIndex == index;
              return GestureDetector(
                onTap: () => setState(() => selectedIndex = index),
                child: Container(
                  width: 101,
                  height: 36,
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.primaryColor
                        : Colors.transparent,
                    border: Border.all(color: AppColors.myGeryColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          item.iconAssets,
                          color: isSelected
                              ? AppColors.myWhiteColor
                              : AppColors.myBlackColor,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          S.current.Card,
                          style: TextStyle(
                              color: isSelected
                                  ? AppColors.myWhiteColor
                                  : AppColors.myBlackColor),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildPromoCodeField() {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: S.current.checkoutEnterPromoCode,
              hintStyle: TextStyle(color: AppColors.myGeryColor),
              prefixIcon: Icon(Icons.local_offer_outlined,
                  color: AppColors.myGeryColor),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(color: AppColors.myGeryColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(color: AppColors.myGeryColor),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          width: 80,
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              S.current.checkoutAdd,
              style: TextStyle(
                color: AppColors.myWhiteColor,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
        color: Colors.white,
      ),
      child: Row(
        children: [
          const Text(
            "VISA",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(width: 12),
          const Expanded(
            child: Text(
              "**** **** **** 2512",
              style: TextStyle(fontSize: 16, letterSpacing: 2),
            ),
          ),
          IconButton(
            onPressed: () {
              // TODO: card action
            },
            icon: const Icon(Icons.edit, size: 20),
          ),
        ],
      ),
    );
  }
}

Widget _buildSummarySection(double subtotal, double delivery, double discount) {
  final total = subtotal + delivery - discount;

  return Column(
    children: [
      _buildPriceRow(
        S.current.cartSubTotal,
        subtotal,
        color: AppColors.myGeryColor,
      ),
      const SizedBox(height: 8),
      _buildPriceRow(
        S.current.cartDeliveryFee,
        delivery,
        color: AppColors.myGeryColor,
      ),
      const SizedBox(height: 8),
      _buildPriceRow(
        S.current.cartDiscount,
        discount,
        color: AppColors.myGeryColor,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Divider(color: Colors.grey, height: 1, thickness: 0.8),
      ),
      _buildPriceRow(S.current.cartTotal, total, isBold: true, fontSize: 18),
    ],
  );
}

Widget _buildPriceRow(
  String label,
  double value, {
  bool isBold = false,
  double fontSize = 16,
  Color? color,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        label,
        style: TextStyle(
          fontSize: fontSize,
          color: color,
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
