import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';

class WorryAnswerPage extends StatelessWidget {
  const WorryAnswerPage({super.key});

  static const routeName = 'worry-answer';

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Scaffold(
      appBar: AppBackButton(title: l10n.yourWorry),
    );
  }
}
