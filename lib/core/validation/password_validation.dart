class PasswordValidation {
  static bool validate(String password, String password2) {
    if (password.compareTo(password2) == 0) return true;
    return false;
  }
}
