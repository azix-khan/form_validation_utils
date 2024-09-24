import 'package:form_validation_utils/form_validation_utils.dart';

export 'src/email_validation.dart';
export 'src/password_validation.dart';
export 'src/username_validation.dart';
export 'src/phone_number_validation.dart';

class FormValidators {
  // Validator for email
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email';
    }
    if (!isValidEmail(value)) {
      return 'Please enter a valid email';
    }
    return null; // Input is valid
  }

  // Validator for password
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    }
    if (!isValidPassword(value)) {
      return 'Password must be at least 8 characters,\ninclude a number and a special character';
    }
    return null; // Input is valid
  }

  // Validator for username
  static String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a username';
    }
    if (!isValidUsername(value)) {
      return 'Username contains invalid characters';
    }
    return null; // Input is valid
  }

  // Validator for phone number
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a phone number';
    }
    if (!isValidPhoneNumber(value)) {
      return 'Please enter a valid phone number';
    }
    return null; // Input is valid
  }

  // I will add more validators as needed (e.g., validateCreditCard, validateDate, etc.)
}
