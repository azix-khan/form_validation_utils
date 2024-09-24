bool isValidPassword(String password, {int minLength = 8}) {
  if (password.length < minLength) return false;

  final hasUppercase = password.contains(RegExp(r'[A-Z]'));
  final hasDigits = password.contains(RegExp(r'[0-9]'));
  final hasLowercase = password.contains(RegExp(r'[a-z]'));
  final hasSpecialCharacters =
      password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

  return hasUppercase && hasDigits && hasLowercase && hasSpecialCharacters;
}
