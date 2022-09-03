import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

final permissionServiceProvider = Provider((ref) {
  return PermissionService._();
});

class PermissionService {
  PermissionService._();

  /// アクセス可能であれば何もしない
  Future<bool> cameraOrPhotosPermissionRequest({
    required BuildContext context,
    required Permission permission,
    required ImageSource source,
  }) async {
    final permissionStatus = await permission.request();
    if (permissionStatus.isPermanentlyDenied) {
      await showCameraOrPhotosPermissionRequestDialog(
        context: context,
        source: source,
      );
      return false;
    }
    if (permissionStatus.isDenied) {
      // 権限がない場合は許可を求める
      final permissionStatus = await permission.request();

      // 権限を拒否した場合は、許可するように促す
      if (permissionStatus.isDenied || permissionStatus.isPermanentlyDenied) {
        await showCameraOrPhotosPermissionRequestDialog(
          context: context,
          source: source,
        );
        return false;
      }
    }

    return true;
  }

  Future<void> showCameraOrPhotosPermissionRequestDialog({
    required BuildContext context,
    required ImageSource source,
  }) {
    final l10n = L10n.of(context);
    final message = source == ImageSource.camera
        ? l10n.cameraPermissionMessage
        : l10n.photoPermissionMessage;
    return showOkAlertDialog(
      context: context,
      message: message,
      okLabel: l10n.moveToSettings,
      onWillPop: openAppSettings,
    );
  }
}
