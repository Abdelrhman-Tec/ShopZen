import 'package:flutter/material.dart';
import 'package:my_app/core/utils/app_colors.dart';
import 'package:my_app/generated/l10n.dart';

Widget buildDontHaveAccount(BuildContext context,{Function()? ontap,required String text}) {
  final size = MediaQuery.of(context).size;
  final width = size.width;

  return GestureDetector(
    onTap: ontap,
    child: Center(
      child: Text.rich(
        TextSpan(
          text: S.of(context).authHaveAccount,
          children: [
            TextSpan(
              text: text,
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: width * .04,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        style: TextStyle(
          color: AppColors.myGeryColor,
          fontSize: width * .04,
        ),
      ),
    ),
  );
}
