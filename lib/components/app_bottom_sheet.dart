import 'package:flutter/material.dart';

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({
    super.key,
    required this.child,
  });

  final Widget child;
  static const bottomSheetBottom = 36.0;

  @override
  Widget build(BuildContext context) {
    const horizontal = 16.0;
    return Padding(
      padding: const EdgeInsets.only(
        left: horizontal,
        right: horizontal,
        bottom: bottomSheetBottom,
      ),
      child: child,
    );
  }
}
