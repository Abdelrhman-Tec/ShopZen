import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_app/config/dependency_injection/dependency_injection.dart';
import 'package:my_app/config/routes/app_routes.dart';
import 'package:my_app/config/theme/cubit/theme_cubit.dart';
import 'package:my_app/config/theme/cubit/theme_state.dart';
import 'package:my_app/config/theme/theme_data/theme_data_dark.dart';
import 'package:my_app/config/theme/theme_data/theme_data_light.dart';
import 'package:my_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:my_app/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:my_app/features/categories/presentation/cubit/categories_cubit.dart';
import 'package:my_app/features/products/presentation/cubit/product_cubit.dart';
import 'package:my_app/features/saved_items/presentation/cubit/saved_items_cubit.dart';
import 'package:my_app/features/search/presentation/cubit/search_cubit.dart';
import 'package:my_app/generated/l10n.dart';

class ShopZen extends StatelessWidget {
  const ShopZen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<ProductCubit>()..getAllProducts()),
        BlocProvider(
            create: (_) => getIt<CategoriesCubit>()..getAllCategories()),
        BlocProvider(create: (_) => getIt<SearchCubit>()),
        BlocProvider(create: (_) => CartCubit()),
        BlocProvider(create: (_) => SavedCubit()),
        BlocProvider(create: (_) => getIt<ThemeCubit>()),
        BlocProvider(create: (_) => AuthCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          ThemeMode themeMode = ThemeMode.system;
          if (state is ThemeLight) themeMode = ThemeMode.light;
          if (state is ThemeDark) themeMode = ThemeMode.dark;

          Locale locale = const Locale('en');
          if (state is ChangeLanguageToArabic) locale = const Locale('ar');
          if (state is ChangeLanguageToEnglish) locale = const Locale('en');

          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'ShopZen',
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: themeMode,
            locale: locale,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            routerConfig: AppRoutes.appRouter,
          );
        },
      ),
    );
  }
}
