import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:my_app/config/cache/cache_helper.dart';
import 'package:my_app/config/theme/cubit/theme_state.dart';
import 'package:my_app/config/theme/data/model/theme_data_model.dart';

enum Language { ar, en }

class ThemeCubit extends Cubit<ThemeState> {
  final CacheHelper cacheHelper;

  ThemeCubit({required this.cacheHelper}) : super(ThemeIntial()) {
    changeThemeMode(ThemeDataModel.intial);
    loadLanguage();
  }

  void changeThemeMode(ThemeDataModel state) {
    switch (state) {
      case ThemeDataModel.intial:
        final savedTheme = cacheHelper.getString(key: "theme");
        if (savedTheme == 'l') {
          emit(ThemeLight());
        } else if (savedTheme == 'd') {
          emit(ThemeDark());
        }
        return;

      case ThemeDataModel.light:
        cacheHelper.set(key: "theme", value: 'l');
        emit(ThemeLight());
        break;

      case ThemeDataModel.dark:
        cacheHelper.set(key: "theme", value: 'd');
        emit(ThemeDark());
        break;
    }
  }

  void changeLanguage(Language state) {
    switch (state) {
      case Language.ar:
        cacheHelper.set(key: "lang", value: 'ar');
        emit(ChangeLanguageToArabic(locale: const Locale("ar")));
        break;
      case Language.en:
        cacheHelper.set(key: "lang", value: 'en');
        emit(ChangeLanguageToEnglish(locale: const Locale("en")));
        break;
    }
  }

  void loadLanguage() {
    final lang = cacheHelper.getString(key: "lang");
    if (lang == 'ar') {
      emit(ChangeLanguageToArabic(locale: const Locale("ar")));
    } else if (lang == 'en') {
      emit(ChangeLanguageToEnglish(locale: const Locale("en")));
    }
  }
}
