import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/components/app_bottom_sheet.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/features/osake_items/models/osake.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OsakeDetailPage extends StatelessWidget {
  const OsakeDetailPage({super.key});

  static const routeName = 'osake-detail';

  @override
  Widget build(BuildContext context) {
    const osake = Osake(
      name: 'ほろよい（１本セット）',
      price: 300,
      image: 'https://m.media-amazon.com/images/I/81LTz2HBEUL._AC_SL1500_.jpg',
    );
    final l10n = L10n.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return Scaffold(
      appBar: const AppBackButton(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          Image.network(
            osake.image,
          ),
          const Gap(20),
          Text(
            osake.name,
            style: textTheme.titleLarge,
          ),
          const Gap(10),
          Text(
            l10n.yen(osake.price),
            style: textTheme.headlineMedium!.copyWith(
              color: colorScheme.primary,
              fontWeight: FontWeight.normal,
            ),
          )
        ],
      ),
      bottomSheet: AppBottomSheet(
        child: AppFilledButton(
          text: l10n.setupComplete,
          onPressed: () {},
        ),
      ),
    );
  }
}
