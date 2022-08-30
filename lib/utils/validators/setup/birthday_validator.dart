import 'package:dating_app/features/user/models/birthday/birthday.dart';
import 'package:dating_app/l10n/l10n.dart';

String? birthdayValidator({
  required L10n l10n,
  required String? birthday,
}) {
  final validation = Birthday.validate(birthday);
  switch (validation) {
    case BirthdayValidation.valid:
      return null;
    case BirthdayValidation.empty:
      return l10n.somethingIsRequired(l10n.birthday);
    case BirthdayValidation.invalidFormat:
      return l10n.invalidFormatBirthday;
  }
}
