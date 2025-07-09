import 'package:flutter/widgets.dart';

sealed class ThemeState {
  final Locale? locale;

  ThemeState({this.locale});
}

final class ThemeIntial extends ThemeState {
  ThemeIntial({super.locale});
}

final class ThemeLight extends ThemeState {
  ThemeLight({super.locale});
}

final class ThemeDark extends ThemeState {
  ThemeDark({super.locale});
}

final class ChangeLanguageToArabic extends ThemeState {
  ChangeLanguageToArabic({super.locale});
}

final class ChangeLanguageToEnglish extends ThemeState {
  ChangeLanguageToEnglish({super.locale});
}
