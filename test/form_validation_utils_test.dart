import 'package:flutter_test/flutter_test.dart';
import 'package:form_validation_utils/form_validation_utils.dart';

void main() {
  test('Valid email test', () {
    expect(isValidEmail('example@test.com'), true);
    expect(isValidEmail('invalidemail'), false);
  });

  test('Password strength test', () {
    expect(isValidPassword('Password1!'), true);
    expect(isValidPassword('weak'), false);
  });

  test('Valid username test', () {
    expect(isValidUsername('user_name'), true);
    expect(isValidUsername('!invalid'), false);
  });

  test('Phone number validation test', () {
    expect(isValidPhoneNumber('1234567890'), true); // Valid number
    expect(isValidPhoneNumber('123'), false); // Too short
    expect(isValidPhoneNumber('abcde12345'), false); // Contains letters
  });
}
