import 'package:flutter/material.dart';

class AppBackButton extends StatelessWidget with PreferredSizeWidget {
  const AppBackButton({
    super.key,
    this.title,
    this.actions,
  });

  final String? title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        color: colorScheme.primary,
        onPressed: () => Navigator.maybePop(context),
      ),
      title: title == null
          ? null
          : Text(title!, style: const TextStyle(color: Colors.black)),
      centerTitle: false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
