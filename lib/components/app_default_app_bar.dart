import 'package:dating_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
      toolbarHeight: 50,
      leading: Assets.images.logo.app.image(scale: 4),
      title: Text(title, style: const TextStyle(color: Colors.black)),
      centerTitle: false,
      actions: actions == null ? [] : [...actions!, const Gap(16)],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class AppBarAction extends StatelessWidget {
  const AppBarAction({
    super.key,
    required this.onTap,
    required this.icon,
  });

  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: colorScheme.primary.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon, color: colorScheme.primary),
      ),
    );
  }
}
