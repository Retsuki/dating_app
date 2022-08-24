import 'package:flutter/material.dart';

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    const bottom = 42.0;
    const horizontal = 16.0;
    return Padding(
      padding: const EdgeInsets.only(
        left: horizontal,
        right: horizontal,
        bottom: bottom,
      ),
      child: child,
    );
  }
}
