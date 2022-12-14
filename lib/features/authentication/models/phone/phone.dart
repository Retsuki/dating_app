import 'package:dating_app/utils/extensions/extension_string.dart';
import 'package:dating_app/utils/validators/common.dart';

enum PhoneValidation {
  valid,
  empty,
  containsHyphen,
  invalidLength,
}

class Phone {
  const Phone(this._phoneNumber);
  final String _phoneNumber;
  String get phoneNumber => _phoneNumber;

  static String toInternatinalPhoneNumber(String phoneNumber) {
    return phoneNumber.replaceFirst(RegExp(r'0'), '+81');
  }

  static String maskPhoneNumber(String phoneNumber) {
    final firstThreeCharacters = phoneNumber.substring(0, 3);
    final lastTwoCharacters = phoneNumber.substring(phoneNumber.length - 2);
    return '$firstThreeCharacters **** **$lastTwoCharacters';
  }

  static PhoneValidation validate(String? value) {
    if (value.isNullOrEmpty) {
      return PhoneValidation.empty;
    }
    if (containsHyphen(value)) {
      return PhoneValidation.containsHyphen;
    }
    if (value!.length != 11) {
      return PhoneValidation.invalidLength;
    }
    return PhoneValidation.valid;
  }
}
