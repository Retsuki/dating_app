import 'package:dating_app/features/home/applications/user_detail/user_detail_provider.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:dating_app/utils/date_formatter/date_to_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class UserProfileInfo extends ConsumerWidget {
  const UserProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final user = ref.watch(userDetailProvider);
    if (user == null) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.nickNameAndAge(
              user.nickName,
              birthdayStrToAge(user.birthday!),
            ),
            style: textTheme.displayLarge,
          ),
          const Gap(6),
          Text(
            'デザイナー',
            style: textTheme.bodyLarge,
          )
        ],
      ),
    );
  }
}
