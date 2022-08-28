import 'package:dating_app/features/authentication/models/email/email.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Email test', () {
    expect(
      Email.validate(''),
      EmailValidation.empty,
    );
    expect(
      Email.validate('h'),
      EmailValidation.invalidFormat,
    );
    expect(
      Email.validate('hello@world.com'),
      EmailValidation.valid,
    );
  });
}
