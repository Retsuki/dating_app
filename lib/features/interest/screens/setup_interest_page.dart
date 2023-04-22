import 'package:dating_app/components/app_back_button.dart';
import 'package:dating_app/components/app_bottom_sheet.dart';
import 'package:dating_app/components/app_button.dart';
import 'package:dating_app/features/interest/applications/master_interest_provider.dart';
import 'package:dating_app/features/user/applications/setup/setup_state_notifier.dart';
import 'package:dating_app/features/user/screens/setup/setup_complete_page.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SetupInterest extends ConsumerWidget {
  const SetupInterest({super.key});

  static const routeName = 'setup-interest';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);
    final setupState = ref.watch(setupStateNotifierProvider);
    final setupNotifier = ref.watch(setupStateNotifierProvider.notifier);
    final masterInterests = ref.watch(masterInterestProvider);

    void Function(bool) onSelected(String id) {
      return (bool isSelected) =>
          isSelected ? setupNotifier.add(id) : setupNotifier.remove(id);
    }

    return Scaffold(
      appBar: AppBackButton(title: l10n.interestWithMinimumRequirement),
      body: Form(
        key: setupNotifier.setupFormKeys[SetupFormType.interests],
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              Text(l10n.interestMessage),
              const Gap(24),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: masterInterests.map((masterInterest) {
                  final interestId = masterInterest.id;
                  final interest = masterInterest.entity;
                  return AppChip(
                    label: interest.name,
                    isSelected: setupState.contains(interestId),
                    onSelected: onSelected(interestId),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: AppBottomSheet(
        child: AppFilledButton(
          text: l10n.setupComplete,
          onPressed: () async {
            if (await setupNotifier
                .saveToFirestoreIfValid(SetupFormType.interests)) {
              context.goNamed(SetupCompletePage.routeName);
            }
          },
        ),
      ),
    );
  }
}

class AppChip extends ConsumerWidget {
  const AppChip({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onSelected,
  });

  final String label;
  final bool isSelected;
  final void Function(bool) onSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return FilterChip(
      label: Text(label),
      labelStyle: TextStyle(
        color: isSelected ? colorScheme.onPrimary : colorScheme.primary,
      ),
      side: BorderSide(color: colorScheme.primary),
      selected: isSelected,
      selectedColor: colorScheme.primary,
      backgroundColor: colorScheme.onPrimary,
      showCheckmark: false,
      onSelected: onSelected,
    );
  }
}
