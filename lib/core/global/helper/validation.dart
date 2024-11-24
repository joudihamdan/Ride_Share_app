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
}

