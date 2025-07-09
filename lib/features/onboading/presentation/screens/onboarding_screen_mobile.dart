import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/config/cache/cache_helper.dart';
import 'package:my_app/config/routes/app_routes.dart';
import 'package:my_app/core/utils/app_colors.dart';
import 'package:my_app/core/widget/custom_button_widget.dart';
import 'package:my_app/features/onboading/presentation/widgets/welcome_section.dart';
import 'package:my_app/generated/l10n.dart';

class MobileOnboarding extends StatelessWidget {
  const MobileOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildWelcomeSection(context),
            const SizedBox(height: 30),
            CustomButtonWidget(
              ontap: () async {
                await CacheHelper()
                    .set(key: 'onboarding_completed', value: true);
                context.goNamed(AppRoutes.signIn);
              },
              fontSize: width * .05,
              width: width * .9,
              height: height * .07,
              name: S.of(context).onboardingGetStarted,
              color: AppColors.primaryColor,
              showIcon: false,
            )
          ],
        ),
      ),
    );
  }
}
