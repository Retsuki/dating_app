import 'package:dating_app/components/app_bottom_natigation_bar.dart';
import 'package:dating_app/components/app_default_app_bar.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';

class PerformingWithManagement extends StatelessWidget {
  const PerformingWithManagement({super.key});

  static const routeName = 'performing-with-management';

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Scaffold(
      appBar: AppDefaultAppBar(title: l10n.leisurelyManagement),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
