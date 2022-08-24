import 'package:dating_app/features/authentication/models/phone/phone.dart';
import 'package:dating_app/l10n/l10n.dart';

String? phoneValidator({
  required L10n l10n,
  required String? phoneNumber,
}) {
  final validation = Phone.validate(phoneNumber);
  switch (validation) {
    case PhoneValidation.valid:
      return null;
    case PhoneValidation.empty:
      return l10n.somethingIsRequired(l10n.phone);
    case PhoneValidation.containsHyphen:
    case PhoneValidation.invalidLength:
      return l10n.phoneIs12Digits;
  }
}
