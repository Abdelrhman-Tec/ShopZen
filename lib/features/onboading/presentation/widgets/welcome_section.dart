import 'package:flutter/material.dart';
import 'package:my_app/core/utils/app_colors.dart';
import 'package:my_app/core/utils/assets.dart';
import 'package:my_app/generated/l10n.dart';

Widget buildWelcomeSection(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  return Column(
    children: [
      SizedBox(
          width: width * 40,
          height: height * 0.3,
          child: Image.asset(Assets.assetsIconsOnboarding)),
      Text(
        S.of(context).onboardingWelcome,
        style: TextStyle(fontSize: width * .06, fontWeight: FontWeight.w500),
      ),
      SizedBox(
        height: width * .01,
      ),
      Text(
        S.of(context).onboardingDescription,
        style: TextStyle(
            fontSize: width * .05,
            fontWeight: FontWeight.w400,
            color: AppColors.myGeryColor),
        textAlign: TextAlign.center,
      ),
    ],
  );
}

