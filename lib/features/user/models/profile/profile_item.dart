import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';

enum ProfileItem {
  editProfile,
  notification,
  security,
  inviteFrields,
  logout,
  withDraw,
  ;

  String getName({
    required L10n l10n,
    required ProfileItem profileItem,
  }) {
    switch (profileItem) {
      case ProfileItem.editProfile:
        return l10n.editProfile;
      case ProfileItem.notification:
        return l10n.notification;
      case ProfileItem.security:
        return l10n.security;
      case ProfileItem.inviteFrields:
        return l10n.inviteFriends;
      case ProfileItem.logout:
        return l10n.logout;
      case ProfileItem.withDraw:
        return l10n.withDraw;
    }
  }

  Icon getIcon({
    required ProfileItem profileItem,
    required Color color,
  }) {
    switch (profileItem) {
      case ProfileItem.editProfile:
        return Icon(
          Icons.person,
          color: color,
        );
      case ProfileItem.notification:
        return Icon(
          Icons.notifications,
          color: color,
        );
      case ProfileItem.security:
        return Icon(
          Icons.security,
          color: color,
        );
      case ProfileItem.inviteFrields:
        return Icon(
          Icons.people_alt,
          color: color,
        );
      case ProfileItem.logout:
        return Icon(
          Icons.logout,
          color: color,
        );
      case ProfileItem.withDraw:
        return Icon(
          Icons.person_remove,
          color: color,
        );
    }
  }
}
