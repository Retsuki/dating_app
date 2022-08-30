import 'package:dating_app/features/authentication/models/email/email.dart';
import 'package:dating_app/l10n/l10n.dart';

String? emailValidator({
  required L10n l10n,
  required String? email,
}) {
  final validation = Email.validate(email);
  switch (validation) {
    case EmailValidation.valid:
      return null;
    case EmailValidation.empty:
      return l10n.somethingIsRequired(l10n.email);
    case EmailValidation.invalidFormat:
      return l10n.invalidEmail;
  }
}
