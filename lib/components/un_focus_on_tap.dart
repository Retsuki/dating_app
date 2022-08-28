import 'package:flutter/material.dart';

class UnfocusOnTap extends StatelessWidget {
  const UnfocusOnTap({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        final currentScope = FocusScope.of(context);
        if (currentScope.hasPrimaryFocus) {
          return;
        }
        if (!currentScope.hasFocus) {
          return;
        }

        currentScope.unfocus();
      },
      child: child,
    );
  }
}
