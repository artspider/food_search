import 'package:food_search/core/validation/email_validation.dart';

class LoginValidation {
  static String validateUserEmail(String email) {
    if (email.isEmpty) {
      return 'Ingrese un Email válido';
    }
    if (!EmailValidation.validate(email)) {
      return 'Ingresa un Email valido';
    }

    return null;
  }

  static String validateUserPassword(String password) {
    if (password.length < 4) {
      return 'Contraseña demasiado corta';
    }
    return null;
  }
}
