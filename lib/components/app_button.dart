import 'package:flutter/material.dart';

enum Type { round }

class FilledButton extends StatelessWidget {
  const FilledButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.minimumSize,
    this.primary,
    this.onPrimary,
    this.type,
  });

  final String text;
  final VoidCallback onPressed;
  final Size? minimumSize;
  final Color? primary;
  final Color? onPrimary;
  final Type? type;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).elevatedButtonTheme;
    final style = theme.style!;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: primary,
        minimumSize: minimumSize,
        onPrimary: onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: type == Type.round
              ? BorderRadius.circular(32)
              : BorderRadius.circular(10),
        ),
      ).merge(style),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

class GhostButton extends StatelessWidget {
  const GhostButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.minimumSize,
    this.primary,
    this.onPrimary,
    this.type,
  });

  final String text;
  final VoidCallback onPressed;
  final Size? minimumSize;
  final Color? primary;
  final Color? onPrimary;
  final Type? type;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).outlinedButtonTheme;
    final style = theme.style!;
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: type == Type.round
              ? BorderRadius.circular(32)
              : BorderRadius.circular(10),
        ),
      ).merge(style),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

class BorderlessButton extends StatelessWidget {
  const BorderlessButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.minimumSize,
    this.primary,
    this.onPrimary,
    this.type,
  });

  final String text;
  final VoidCallback onPressed;
  final Size? minimumSize;
  final Color? primary;
  final Color? onPrimary;
  final Type? type;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).elevatedButtonTheme;
    final style = theme.style!;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: primary,
        minimumSize: minimumSize,
        onPrimary: onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ).merge(style),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
