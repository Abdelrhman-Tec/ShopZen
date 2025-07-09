import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/core/utils/app_colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final Color color;
  final bool showBackgroundButton;
  final bool showIcon;
  final double width;
  final double height;
  final double fontSize;
  final String name;
  final String? iconAsset;
  final Function()? ontap;

  const CustomButtonWidget(
      {super.key,
      required this.width,
      required this.height,
      required this.name,
      required this.fontSize,
      this.ontap,
      required this.color,
      this.showBackgroundButton = true,
      this.iconAsset,
      required this.showIcon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: showBackgroundButton ? color : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: showBackgroundButton == false
                    ? Colors.grey
                    : Colors.transparent)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconAsset != null && showIcon == true) ...[
              SvgPicture.asset(iconAsset!),
            ],
            const SizedBox(
              width: 5,
            ),
            Center(
                child: Text(
              name,
              style: TextStyle(
                  color: showBackgroundButton
                      ? AppColors.myWhiteColor
                      : AppColors.myBlackSheed28Color,
                  fontSize: fontSize,
                  fontWeight: FontWeight.w500),
            )),
          ],
        ),
      ),
    );
  }
}
