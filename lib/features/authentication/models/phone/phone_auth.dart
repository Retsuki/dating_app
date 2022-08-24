import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_auth.freezed.dart';

@freezed
class PhoneAuth with _$PhoneAuth {
  factory PhoneAuth({
    String? phoneNumber,
    String? verificationId,
    String? smsCode,
  }) = _PhoneAuth;
}
