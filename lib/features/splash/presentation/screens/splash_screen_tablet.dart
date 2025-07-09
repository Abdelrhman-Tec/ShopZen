import 'package:flutter/material.dart';
import 'package:my_app/core/utils/app_colors.dart';

class TabletSplash extends StatelessWidget {
  const TabletSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: const Center(child: Text('Tablet Splash')),
    );
  }
}
