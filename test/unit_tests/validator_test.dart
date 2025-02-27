import 'package:flutter_test/flutter_test.dart';
import 'package:talawa/utils/validator.dart';

void main() {
  group('Register/login Page test', () {
    test('Firstname must not be null', () {
      final result = Validator.validateFirstName('');
      expect(result, 'Firstname must not be left blank.');
    });

    test('Firstname is not null', () {
      final result = Validator.validateFirstName('example');
      expect(result, null);
    });

    test('Lastname must not be null', () {
      final result = Validator.validateLastName('');
      expect(result, 'Lastname must not be left blank.');
    });

    test('Lastname is not null', () {
      final result = Validator.validateLastName('example');
      expect(result, null);
    });

    test('Shows error when email is empty', () {
      // Get the result.
      final result = Validator.validateEmail('');

      // Verify that correct error is shown.
      expect(result, "Email must not be left blank");
    });

    test('Shows error when email is invalid', () {
      // Get the result.
      final result = Validator.validateEmail('example@com');

      // Verify that correct error is shown.
      expect(result, 'Please enter a valid Email Address');
    });

    test('Correctly formatted email returns null', () {
      final result = Validator.validateEmail('example@email.com');
      expect(result, null);
    });

    test('password less than 6 returns error string', () {
      final result = Validator.validatePassword('pass');
      expect(result, 'Invalid Password');
    });

    test('password valid', () {
      final result = Validator.validatePassword('PASSWORD1@');
      expect(result, null);
    });
  });
}
