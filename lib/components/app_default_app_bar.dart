import 'package:dating_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class AppDefaultAppBar extends StatelessWidget with PreferredSizeWidget {
  const AppDefaultAppBar({
    super.key,
    required this.title,
    this.actions,
  });

  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Assets.images.logo.app.image(scale: 4),
      title: Text(title, style: const TextStyle(color: Colors.black)),
      centerTitle: false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
