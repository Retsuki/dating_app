import 'package:dating_app/gen/assets.gen.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';

class AppDefaultAppBar extends StatelessWidget with PreferredSizeWidget {
  const AppDefaultAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return AppBar(
      leading: Assets.images.logo.app.image(scale: 4),
      title: Text(l10n.prifile, style: const TextStyle(color: Colors.black)),
      centerTitle: false,
      actions: [
        IconButton(
          icon: const Icon(Icons.more_vert),
          color: colorScheme.primary,
          onPressed: () {},
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
