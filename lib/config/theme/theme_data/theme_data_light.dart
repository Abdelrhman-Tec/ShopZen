import 'package:flutter/material.dart';
import 'package:my_app/core/utils/app_colors.dart';

final lightTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.myWhiteColor,
  primaryColor: AppColors.primaryColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.myWhiteColor,
    foregroundColor: AppColors.myBlackColor,
    elevation: 0,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: AppColors.myBlackColor),
    bodyMedium: TextStyle(color: AppColors.myBlackColor),
  ),
  iconTheme: const IconThemeData(color: AppColors.primaryColor),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: AppColors.myWhiteColor,
    ),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: AppColors.secondryColor,
    brightness: Brightness.light,
  ),
);
