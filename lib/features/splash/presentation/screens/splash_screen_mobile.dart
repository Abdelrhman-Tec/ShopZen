import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/config/cache/cache_helper.dart';
import 'package:my_app/config/routes/app_routes.dart';
import 'package:my_app/core/utils/app_colors.dart';
import 'package:my_app/core/utils/assets.dart';

class MobileSplash extends StatefulWidget {
  const MobileSplash({super.key});

  @override
  State<MobileSplash> createState() => _MobileSplashState();
}

class _MobileSplashState extends State<MobileSplash> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 2));

      final hasCompletedOnboarding =
          CacheHelper().getBool(key: 'onboarding_completed') ?? false;

      final isLoggedIn = CacheHelper().getBool(key: 'is_logged_in') ?? false;

      if (!hasCompletedOnboarding) {
        context.goNamed(AppRoutes.onboardingName);
      } else if (isLoggedIn) {
        context.goNamed(AppRoutes.home);
      } else {
        context.goNamed(AppRoutes.signIn);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: width * .6,
              height: height * .4,
              child: SvgPicture.asset(Assets.assetsIconsLogo),
            ),
          ),
        ],
      ),
    );
  }
}
