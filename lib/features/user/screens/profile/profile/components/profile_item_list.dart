import 'package:collection/collection.dart';
import 'package:dating_app/features/user/models/profile/profile_item.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';

class ProfileItemList extends StatelessWidget {
  const ProfileItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return Column(
      children: ProfileItem.values.mapIndexed(
        (i, profileItem) {
          return InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                border: i == ProfileItem.values.length - 1
                    ? null
                    : const Border(
                        bottom: BorderSide(
                          width: 0.5,
                          color: Colors.black12,
                        ),
                      ),
              ),
              child: ListTile(
                leading: Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: colorScheme.primary.withOpacity(0.1),
                  ),
                  child: profileItem.getIcon(
                    profileItem: profileItem,
                    color: colorScheme.primary,
                  ),
                ),
                title: Text(
                  profileItem.getName(
                    l10n: l10n,
                    profileItem: profileItem,
                  ),
                  style: textTheme.bodySmall!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: Icon(
                  Icons.navigate_next,
                  color: colorScheme.primary,
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
