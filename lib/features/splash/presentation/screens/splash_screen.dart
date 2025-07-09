import 'package:flutter/material.dart';
import 'package:my_app/core/helpers/responsive.dart';
import 'package:my_app/features/splash/presentation/screens/splash_screen_mobile.dart';
import 'package:my_app/features/splash/presentation/screens/splash_screen_tablet.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: const MobileSplash(),
      tablet: const TabletSplash(),
      desktop: const MobileSplash(),
    );
  }
}
