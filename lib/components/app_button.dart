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
    this.icon,
  });

  final String text;
  final VoidCallback onPressed;
  final Size? minimumSize;
  final Color? primary;
  final Color? onPrimary;
  final Type? type;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).outlinedButtonTheme;
    final style = theme.style!;
    final outlinedButtonStyleFrom = OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: type == Type.round
            ? BorderRadius.circular(32)
            : BorderRadius.circular(10),
      ),
    );
    return OutlinedButton(
      style: outlinedButtonStyleFrom.merge(style),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: icon,
            ),
          Text(text),
        ],
      ),
    );
  }
}

// TextButtonにしてね
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
    final theme = Theme.of(context).textButtonTheme;
    final style = theme.style!;
    return TextButton(
      style: TextButton.styleFrom(
        primary: primary,
        minimumSize: minimumSize,
      ).merge(style),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
