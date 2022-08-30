import 'package:dating_app/utils/extensions/extension_string.dart';

String? requiredFormValidator({
  required String? value,
  required String message,
}) {
  return value.isNullOrEmpty ? message : null;
}
