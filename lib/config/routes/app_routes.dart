import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/features/auth/presentation/screens/LoginScreen.dart';
import 'package:my_app/features/auth/presentation/screens/sign_in.dart';
import 'package:my_app/features/auth/presentation/screens/sign_up.dart';
import 'package:my_app/features/checkout/presentation/screens/checout_screen.dart';
import 'package:my_app/features/home/presentation/screens/home_screen.dart';
import 'package:my_app/features/home/presentation/widgets/home_nav_bar.dart';
import 'package:my_app/features/notifications/presentation/screens/notification_screen.dart';
import 'package:my_app/features/onboading/presentation/screens/onboarding_screen.dart';
import 'package:my_app/features/product_details/presentation/screens/product_details_screen.dart';
import 'package:my_app/features/products/data/models/product_card_model.dart';
import 'package:my_app/features/splash/presentation/screens/splash_screen.dart';

class AppRoutes {
  // Paths
  static const String splashScreen = "/splash";
  static const String onboarding = "/onboarding";
  static const String loginScreen = "/loginScreen";
  static const String signInScreen = "/signInScreen";
  static const String signUpScreen = "/signUpScreen";
  static const String homeScreen = "/homeScreen";
  static const String productDetailsScreen = "/productDetailsScreen";
  static const String categoriesDetailsScreen = "/categoriesDetailsScreen";
  static const String viewAllScreen = "/viewAllScreen";
  static const String notificationScreen = "/notificationScreen";
  static const String checoutScreen = "/checoutScreen";

  // Names
  static const String viewAll = "viewAllScreen";
  static const String checout = "checout";
  static const String notification = "notification";
  static const String categories = "categories";
  static const String splashName = "splash";
  static const String productDetails = "productDetails";
  static const String onboardingName = "onboarding";
  static const String loginScreenName = "loginScreen";
  static const String signIn = "signIn";
  static const String signUp = "signUp";
  static const String home = "home";

  static final GoRouter appRouter = GoRouter(
    initialLocation: splashScreen,
    routes: [
      GoRoute(
        path: splashScreen,
        name: splashName,
        builder: (BuildContext context, GoRouterState state) => SplashScreen(),
      ),
      GoRoute(
        path: onboarding,
        name: onboardingName,
        builder: (BuildContext context, GoRouterState state) =>
            OnboardingScreen(),
      ),
      GoRoute(
        path: loginScreen,
        name: loginScreenName,
        builder: (BuildContext context, GoRouterState state) => Loginscreen(),
      ),
      GoRoute(
        path: signInScreen,
        name: signIn,
        builder: (BuildContext context, GoRouterState state) => SignIn(),
      ),
      GoRoute(
        path: signUpScreen,
        name: signUp,
        builder: (BuildContext context, GoRouterState state) => SignUp(),
      ),
      GoRoute(
        path: homeScreen,
        name: home,
        builder: (BuildContext context, GoRouterState state) => HomeNavBar(),
      ),
      GoRoute(
        path: viewAllScreen,
        name: viewAll,
        builder: (BuildContext context, GoRouterState state) => ViewAll(),
      ),
      GoRoute(
        path: notificationScreen,
        name: notification,
        builder: (BuildContext context, GoRouterState state) =>
            NotificationScreen(),
      ),
      GoRoute(
        path: checoutScreen,
        name: checout,
        builder: (BuildContext context, GoRouterState state) =>
            CheckoutScreen(),
      ),
      GoRoute(
        path: productDetailsScreen,
        name: productDetails,
        builder: (context, state) {
          final product = state.extra as ProductModel;
          return ProductDetailsScreen(productModel: product);
        },
      ),
    ],
  );
}
