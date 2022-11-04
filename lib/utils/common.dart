import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';

/// 処理中にローディング表示
Future<T> executeWithProgress<T>(
  BuildContext context,
  Future<T> Function() f,
) async {
  try {
    context.loaderOverlay.show();
    return await f();
  } finally {
    context.loaderOverlay.hide();
  }
}
