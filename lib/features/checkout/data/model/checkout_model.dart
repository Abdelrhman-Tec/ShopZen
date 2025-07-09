import 'package:my_app/core/utils/assets.dart';

class CheckoutModel {
  final String name;
  final String iconAssets;

  CheckoutModel({required this.name, required this.iconAssets});
}

List<CheckoutModel> paymentMethodList = [
  CheckoutModel(name: 'Card', iconAssets: Assets.assetsIconsCreditCard),
  CheckoutModel(name: 'Cash', iconAssets: Assets.assetsIconsMoney1),
  CheckoutModel(name: 'Pay', iconAssets: Assets.assetsIconsAppleIcon),
];
