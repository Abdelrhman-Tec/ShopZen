import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/config/routes/app_routes.dart';
import 'package:my_app/core/utils/app_colors.dart';
import 'package:my_app/core/utils/assets.dart';
import 'package:my_app/core/widget/custom_button_widget.dart';
import 'package:my_app/features/auth/presentation/widgets/divider_widet.dart';
import 'package:my_app/features/auth/presentation/widgets/dont_have_widget.dart';
import 'package:my_app/features/auth/presentation/widgets/header_section.dart';
import 'package:my_app/features/auth/presentation/widgets/social_button.dart';
import 'package:my_app/generated/l10n.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.07),

              /// Title
              headerSection(
                context,
                headerName: S.of(context).headerSectionLoginScreen,
              ),
              SizedBox(height: height * 0.04),

              /// Google Login Button
              buildSocialButton(
                context,
                width,
                height,
                text: S.of(context).authLoginWithGoogle,
                icon: Assets.assetsIconsGoogleIcon,
                showColor: false,
              ),
              SizedBox(height: height * 0.025),

              /// Apple Login Button
              buildSocialButton(
                context,
                width,
                height,
                text: S.of(context).authLoginWithApple,
                icon: Assets.assetsIconsAppleIcon,
                showColor: false,
              ),

              SizedBox(height: height * 0.05),

              /// Divider with "or"
              buildOrDivider(context),

              SizedBox(height: height * 0.07),

              /// Login with email
              CustomButtonWidget(
                ontap: () => context.goNamed(AppRoutes.signIn),
                width: width * 0.9,
                height: height * 0.07,
                name: S.of(context).authLoginWithEmail,
                fontSize: width * 0.05,
                color: AppColors.primaryColor,
                showIcon: false,
              ),
              SizedBox(height: height * 0.3),

              /// Already have account? Sign up
              buildDontHaveAccount(
                context,
                ontap: () => context.goNamed(AppRoutes.signUp),
                text: S.current.authSignup,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
