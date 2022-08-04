import 'package:flutter/material.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return IconButton(
      onPressed: () => Navigator.maybePop(context),
      icon: Icon(
        Icons.arrow_back,
        color: colorScheme.primary,
      ),
    );
  }
}
