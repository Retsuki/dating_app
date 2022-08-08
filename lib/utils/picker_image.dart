import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:dating_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Future<ImageSource?> pickImage({required BuildContext context}) async {
  final l10n = L10n.of(context);
  return showModalActionSheet(
    context: context,
    actions: [
      SheetAction<ImageSource>(
        label: l10n.captureFromCamera,
        key: ImageSource.camera,
      ),
      SheetAction<ImageSource>(
        label: l10n.uploadPhoto,
        key: ImageSource.gallery,
      ),
    ],
  );
}
