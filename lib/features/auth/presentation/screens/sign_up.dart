import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/config/routes/app_routes.dart';
import 'package:my_app/core/utils/app_colors.dart';
import 'package:my_app/core/widget/custom_button_widget.dart';
import 'package:my_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:my_app/features/auth/presentation/widgets/custom_form_fialed.dart';
import 'package:my_app/features/auth/presentation/widgets/dont_have_widget.dart';
import 'package:my_app/features/auth/presentation/widgets/header_section.dart';
import 'package:my_app/features/auth/presentation/widgets/terms_condition.dart';
import 'package:my_app/generated/l10n.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthLoading) {
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) =>
                  Center(child: Image.asset('assets/logo/loading.gif')));
        } else {
          Navigator.of(context, rootNavigator: true).pop();
        }

        if (state is AuthError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
              backgroundColor: AppColors.myRedColor,
            ),
          );
        }

        if (state is AuthSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Sign up successful! Please verify your email."),
              backgroundColor: Colors.green,
            ),
          );
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                headerSection(
                  context,
                  headerName: S.of(context).authSignupWithEmail,
                ),

                SizedBox(height: height * 0.06),

                // Email
                CustomTextFormFialed(
                  controller: emailController,
                  labelText: S.of(context).authEmail,
                  hintText: S.of(context).authEnterEmail,
                  showVisibility: false,
                ),

                SizedBox(height: height * 0.025),

                // Password
                CustomTextFormFialed(
                  controller: passwordController,
                  labelText: S.of(context).authPassword,
                  hintText: S.of(context).authEnterPassword,
                  showVisibility: true,
                ),

                SizedBox(height: height * 0.015),

                // Confirm Password
                CustomTextFormFialed(
                  controller: confirmPasswordController,
                  labelText: S.of(context).authConfirmPassword,
                  hintText: S.of(context).authConfirmPassword,
                  showVisibility: true,
                ),

                const TermsConditionWidget(),

                SizedBox(height: height * 0.05),

                // Sign Up Button
                Center(
                  child: CustomButtonWidget(
                    width: width * 0.9,
                    height: height * 0.07,
                    name: S.of(context).authSignup,
                    fontSize: width * 0.05,
                    color: AppColors.primaryColor,
                    showIcon: false,
                    ontap: () {
                      final email = emailController.text.trim();
                      final password = passwordController.text.trim();
                      final confirmPassword =
                          confirmPasswordController.text.trim();

                      if (email.isEmpty ||
                          password.isEmpty ||
                          confirmPassword.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Please fill in all fields.")),
                        );
                        return;
                      }

                      if (password != confirmPassword) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Passwords do not match.")),
                        );
                        return;
                      }

                      context.read<AuthCubit>().createUserWithEmailAndPassword(
                            email,
                            password,
                          );
                    },
                  ),
                ),

                SizedBox(height: height * 0.2),

                // Already have account
                buildDontHaveAccount(
                  context,
                  ontap: () => context.goNamed(AppRoutes.signIn),
                  text: S.of(context).authSignIn,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
