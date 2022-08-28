import 'package:dating_app/features/authentication/models/phone/phone.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Phone test', () {
    expect(
      Phone.validate(''),
      PhoneValidation.empty,
    );
    expect(
      Phone.validate('080-6360-1137'),
      PhoneValidation.containsHyphen,
    );
    expect(
      Phone.validate('08012345'),
      PhoneValidation.invalidLength,
    );
    expect(
      Phone.validate('08012345678'),
      PhoneValidation.valid,
    );
  });
}
