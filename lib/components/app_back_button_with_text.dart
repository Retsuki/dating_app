import 'package:dating_app/components/app_back_button.dart';
import 'package:flutter/material.dart';

class AppBackButtonWithText extends StatelessWidget {
  const AppBackButtonWithText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Row(
      children: [
        const AppBackButton(),
        Text(text, style: textTheme.displaySmall),
      ],
    );
  }
}
