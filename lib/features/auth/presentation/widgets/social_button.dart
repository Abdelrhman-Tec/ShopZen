import 'package:flutter/material.dart';
import 'package:my_app/core/utils/app_colors.dart';
import 'package:my_app/core/widget/custom_button_widget.dart';

Widget buildSocialButton(
  BuildContext context,
  double width,
  double height, {
  required String text,
  required String icon,
  required bool showColor,
  bool showIcon = true,
  Function()? ontap,
}) {
  return CustomButtonWidget(
    ontap: ontap,
    fontSize: width * 0.05,
    width: width * 0.9,
    height: height * 0.07,
    name: text,
    color: AppColors.primaryColor,
    showBackgroundButton: showColor,
    iconAsset: icon,
    showIcon: showIcon,
  );
}
