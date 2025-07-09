import 'package:flutter/material.dart';
import 'package:my_app/core/helpers/responsive.dart';
import 'package:my_app/features/onboading/presentation/screens/onboarding_screen_mobile.dart';
import 'package:my_app/features/onboading/presentation/screens/onboarding_screen_tablet.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: MobileOnboarding(),
      tablet: TabletOnboarding(),
    );
  }
}
