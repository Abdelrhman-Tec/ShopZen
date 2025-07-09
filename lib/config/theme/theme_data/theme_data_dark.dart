import 'package:flutter/material.dart';
import 'package:my_app/core/utils/app_colors.dart';

final darkTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.darkScaffoldBackground,
  primaryColor: AppColors.primaryColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.darkAppBarColor,
    foregroundColor: AppColors.darkTextColor,
    elevation: 0,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: AppColors.darkTextColor),
    bodyMedium: TextStyle(color: AppColors.darkHintColor),
  ),
  iconTheme: const IconThemeData(color: AppColors.primaryColor),
  cardColor: AppColors.darkCardColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: AppColors.myWhiteColor,
    ),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: AppColors.secondryColor,
    brightness: Brightness.dark,
  ),
);
