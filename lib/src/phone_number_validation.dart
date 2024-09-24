bool isValidPhoneNumber(String phoneNumber,
    {int minLength = 10, int maxLength = 15}) {
  final phoneRegex = RegExp(r'^\d+$');
  return phoneRegex.hasMatch(phoneNumber) &&
      phoneNumber.length >= minLength &&
      phoneNumber.length <= maxLength;
}
