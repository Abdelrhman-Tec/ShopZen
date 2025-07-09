import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/config/routes/app_routes.dart';
import 'package:my_app/config/theme/cubit/theme_cubit.dart';
import 'package:my_app/config/theme/data/model/theme_data_model.dart';
import 'package:my_app/core/widget/custom_app_bar.dart';
import 'package:my_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:my_app/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_ProfileItem> items = [
      _ProfileItem(Icons.person_outline, S.of(context).profileMyProfile),
      _ProfileItem(Icons.list_alt, S.of(context).profileMyOrders),
      _ProfileItem(Icons.payment, S.of(context).profilePaymentMethods),
      _ProfileItem(
          Icons.notifications_none, S.of(context).profileNotifications),
      _ProfileItem(
          Icons.privacy_tip_outlined, S.of(context).profilePrivacyPolicy),
      _ProfileItem(Icons.help_outline, S.of(context).profileHelpCenter),
      _ProfileItem(Icons.person_add_alt, S.of(context).profileInviteFriends),
    ];

    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSignedOut) {
          context.go(AppRoutes.signInScreen);
        }
      },
      child: Scaffold(
        appBar: CustomAppBar(namePage: S.of(context).profileMyProfile),
        body: Column(
          children: [
            const SizedBox(height: 12),

            // القائمة الأساسية
            ...items.map((item) => ListTile(
                  leading: Icon(item.icon, color: Colors.black),
                  title: Text(item.title),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {},
                )),

            // تغيير اللغة
            ListTile(
              leading: const Icon(Icons.language),
              title: Text(S.of(context).settingsLanguage),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () => _showLanguageDialog(context),
            ),

            // تغيير المظهر (الثيم)
            ListTile(
              leading: const Icon(Icons.brightness_6),
              title: Text(S.of(context).settingsTheme),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () => _showThemeDialog(context),
            ),

            const Spacer(),

            // زر تسجيل الخروج
            ListTile(
              leading: const Icon(Icons.power_settings_new, color: Colors.red),
              title: Text(
                S.of(context).profileLogout,
                style: const TextStyle(color: Colors.red),
              ),
              onTap: () {
                context.read<AuthCubit>().signOut();
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showThemeDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text(S.of(context).settingsTheme),
        children: [
          SimpleDialogOption(
            child: const Text("Light"),
            onPressed: () {
              context.read<ThemeCubit>().changeThemeMode(ThemeDataModel.light);
              Navigator.pop(context);
            },
          ),
          SimpleDialogOption(
            child: const Text("Dark"),
            onPressed: () {
              context.read<ThemeCubit>().changeThemeMode(ThemeDataModel.dark);
              Navigator.pop(context);
            },
          ),
          SimpleDialogOption(
            child: const Text("System Default"),
            onPressed: () {
              context.read<ThemeCubit>().changeThemeMode(ThemeDataModel.intial);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  void _showLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text(S.of(context).settingsLanguage),
        children: [
          SimpleDialogOption(
            child: const Text("English"),
            onPressed: () {
              context.read<ThemeCubit>().changeLanguage(Language.en);
              Navigator.pop(context);
            },
          ),
          SimpleDialogOption(
            child: const Text("العربية"),
            onPressed: () {
              context.read<ThemeCubit>().changeLanguage(Language.ar);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

class _ProfileItem {
  final IconData icon;
  final String title;
  _ProfileItem(this.icon, this.title);
}
