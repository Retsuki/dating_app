import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({
    super.key,
    this.color,
  });

  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: color ?? colorScheme.surface.withOpacity(0.6),
      ),
      child: const Center(
        child: SpinKitRotatingCircle(
          color: Colors.white,
        ),
      ),
    );
  }
}
