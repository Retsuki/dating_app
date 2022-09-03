import 'package:dating_app/features/authentication/applications/logout_provider.dart';
import 'package:dating_app/features/user/models/profile/profile_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileProvider = Provider(
  (ref) => ProfileProvider(ref.read),
);

class ProfileProvider {
  const ProfileProvider(this._read);

  final Reader _read;

  Future<void> func({
    required BuildContext context,
    required ProfileItem profileItem,
  }) async {
    switch (profileItem) {
      case ProfileItem.editProfile:
      case ProfileItem.notification:
      case ProfileItem.security:
      case ProfileItem.inviteFrields:
        break;
      case ProfileItem.logout:
        return _read(signOutProvider).signOut(context: context);
      case ProfileItem.withDraw:
        break;
    }
  }
}
