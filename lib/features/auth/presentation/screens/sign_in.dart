import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/config/cache/cache_helper.dart';
import 'package:my_app/config/routes/app_routes.dart';
import 'package:my_app/core/utils/app_colors.dart';
import 'package:my_app/core/widget/custom_button_widget.dart';
import 'package:my_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:my_app/features/auth/presentation/widgets/custom_form_fialed.dart';
import 'package:my_app/features/auth/presentation/widgets/dont_have_widget.dart';
import 'package:my_app/features/auth/presentation/widgets/header_section.dart';
import 'package:my_app/generated/l10n.dart';

final email = TextEditingController();
final password = TextEditingController();

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) async {
        if (state is AuthLoading) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (_) =>
                Center(child: Image.asset('assets/logo/loading.gif')),
          );
        } else {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }

          if (state is AuthSuccess) {
            await CacheHelper().set(key: 'is_logged_in', value: true);
            context.goNamed(AppRoutes.home);
          } else if (state is AuthError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.red,
              ),
            );
          }
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Header
                headerSection(
                  context,
                  headerName: S.of(context).authLoginWithEmail,
                ),

                SizedBox(height: height * 0.06),

                /// Email input
                CustomTextFormFialed(
                  controller: email,
                  labelText: S.of(context).authEmail,
                  hintText: S.of(context).authEnterEmail,
                  showVisibility: false,
                ),

                SizedBox(height: height * 0.025),

                /// Password input
                CustomTextFormFialed(
                  controller: password,
                  labelText: S.of(context).authPassword,
                  hintText: S.of(context).authEnterPassword,
                  showVisibility: true,
                ),

                SizedBox(height: height * 0.015),

                /// Forgot Password
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    S.of(context).authForgotPassword,
                    style: TextStyle(
                      fontSize: width * 0.035,
                      color: AppColors.myGeryColor,
                    ),
                  ),
                ),

                SizedBox(height: height * 0.05),

                /// Login Button
                Center(
                  child: CustomButtonWidget(
                    width: width * 0.9,
                    height: height * 0.07,
                    name: S.of(context).authLogin,
                    fontSize: width * 0.05,
                    color: AppColors.primaryColor,
                    showIcon: false,
                    ontap: () {
                      context.read<AuthCubit>().signInWithEmailAndPassword(
                            email.text.trim(),
                            password.text.trim(),
                          );
                    },
                  ),
                ),

                /// Already have account? Sign up
                SizedBox(height: height * 0.3),
                buildDontHaveAccount(
                  context,
                  ontap: () => context.goNamed(AppRoutes.signUp),
                  text: S.of(context).authSignup,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
