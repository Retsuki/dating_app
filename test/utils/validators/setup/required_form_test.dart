import 'package:dating_app/utils/validators/setup/required_form.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Empty test', () {
    const message = '空です';

    expect(
      requiredFormValidator(value: '', message: message),
      message,
    );
    expect(
      requiredFormValidator(value: null, message: message),
      message,
    );
    expect(
      requiredFormValidator(value: 'test', message: message),
      null,
    );
  });
}
