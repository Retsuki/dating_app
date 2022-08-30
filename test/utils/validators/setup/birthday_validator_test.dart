import 'package:dating_app/features/user/models/birthday/birthday.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Birthday form test', () {
    expect(
      Birthday.validate(''),
      BirthdayValidation.empty,
    );
    expect(
      Birthday.validate('2000/91/01'),
      BirthdayValidation.invalidFormat,
    );
    expect(
      Birthday.validate('2000/01/01'),
      BirthdayValidation.valid,
    );
  });
}
