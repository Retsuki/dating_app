import 'package:dating_app/utils/extensions/extension_string.dart';

enum BirthdayValidation {
  valid,
  empty,
  invalidFormat,
}

class Birthday {
  const Birthday(this._birthday);
  final String _birthday;
  String get birthday => _birthday;

  static const formatRegexp =
      r'^(19|20)\d{2}[\/](0[1-9]|1[012])[\/](0[1-9]|[12][0-9]|3[01])$';

  static BirthdayValidation validate(String? value) {
    if (value.isNullOrEmpty) {
      return BirthdayValidation.empty;
    }
    if (!RegExp(formatRegexp).hasMatch(value!)) {
      return BirthdayValidation.invalidFormat;
    }
    return BirthdayValidation.valid;
  }
}
