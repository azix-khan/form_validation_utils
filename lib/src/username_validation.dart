bool isValidUsername(String username, {int minLength = 3, int maxLength = 20}) {
  if (username.length < minLength || username.length > maxLength) return false;

  final usernameRegex = RegExp(r'^[a-zA-Z0-9_]+$');
  return usernameRegex.hasMatch(username);
}
