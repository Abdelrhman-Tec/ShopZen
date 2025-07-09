import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/core/utils/app_colors.dart';
import 'package:my_app/core/utils/assets.dart';
import 'package:my_app/core/widget/custom_app_bar.dart';

import '../../../../generated/l10n.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(namePage: S.current.notifications),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              Assets.assetsIconsNotification,
              color: AppColors.myGeryColor,
              width: 100,
            ),
          ),
          Text(
            S.current.notificationsNoNotifications,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
