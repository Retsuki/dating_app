import 'package:dating_app/utils/extensions/string.dart';

enum EmailValidation {
  valid,
  empty,
  invalidFormat,
}

class Email {
  const Email(this._email);
  final String _email;
  String get email => _email;

  static String formatRegexp =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+\-\/=?^_`{|}~]+@[a-zA-Z0-9\-]+\.[a-zA-Z]+";

  static EmailValidation validate(String? value) {
    if (value.isNullOrEmpty) {
      return EmailValidation.empty;
    }
    if (!RegExp(formatRegexp).hasMatch(value!)) {
      return EmailValidation.invalidFormat;
    }
    return EmailValidation.valid;
  }
}
