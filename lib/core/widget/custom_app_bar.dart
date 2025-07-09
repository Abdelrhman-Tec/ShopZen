import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/config/routes/app_routes.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String namePage;
  final bool? showButton;

  const CustomAppBar({
    super.key,
    required this.namePage,
    this.showButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: showButton == true
            ? Icon(Icons.arrow_back, color: Colors.black)
            : SizedBox.shrink(),
        onPressed: () {
          if (GoRouter.of(context).canPop()) {
            GoRouter.of(context).pop();
          } else if (Navigator.canPop(context)) {
            Navigator.pop(context);
          } else {
            context.go(AppRoutes.homeScreen);
          }
        },
      ),
      centerTitle: true,
      title: Text(
        namePage,
        style:
            const TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
