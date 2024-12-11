class Validation {
  static String? passwordValidation(password) {
    if (password == null || password.isEmpty) {
      return "Password is required";
    }
    if (password.length < 8) {
      return "Password must be at least 8 characters long";
    }
    if (!RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)').hasMatch(password)) {
      return "Password must contain uppercase, lowercase letters, and numbers";
    }
    return null;
  }

  static String? phoneNumber(phoneNumber) {
    if (phoneNumber == null || phoneNumber.number.isEmpty) {
      return "Phone number is required";
    }
    if (!RegExp(r'^\d+$').hasMatch(phoneNumber.number)) {
      return "Phone number must contain only digits";
    }
    return null;
  }

  static String? userName(text) {
    if (text == null || text.isEmpty) {
      return "required";
    }
    if (text.length < 6) {
      return "can't be less than 6 ";
    }
    return null;
  }

  
}
