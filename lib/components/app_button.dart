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
    this.type = Type.round,
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
        foregroundColor: onPrimary,
        backgroundColor: primary,
        minimumSize: minimumSize,
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
    this.borderColor,
    this.type = Type.round,
    this.icon,
    this.textStyle,
  });

  final String text;
  final VoidCallback onPressed;
  final Size? minimumSize;
  final Color? primary;
  final Color? onPrimary;
  final Color? borderColor;
  final Type? type;
  final Widget? icon;
  final TextStyle? textStyle;

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
      side: borderColor != null ? BorderSide(color: borderColor!) : null,
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
          Text(text, style: textStyle),
        ],
      ),
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
    this.type = Type.round,
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
        foregroundColor: primary,
        minimumSize: minimumSize,
      ).merge(style),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
