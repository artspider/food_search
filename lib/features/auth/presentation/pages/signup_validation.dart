import 'package:food_search/core/validation/email_validation.dart';
import 'package:food_search/core/validation/password_validation.dart';

class SignupValidation {
  static String validateUserName(String name) {
    if (name.isEmpty) {
      return 'Ingrese su nombre';
    }
    if (name.contains(new RegExp(r'[0-9]'))) {
      return 'No puede ingresar números';
    }
    if (name.length < 4) {
      return 'Nombre demasiado corto';
    }
    return null;
  }

  static String validateUserEmail(String email) {
    if (email.isEmpty) {
      return 'Ingrese un Email válido';
    }
    if (!EmailValidation.validate(email)) {
      return 'Ingresa un Email valido';
    }

    return null;
  }

  static String validateUserPhone(String phone) {
    if (phone.isEmpty) {
      return 'Ingrese su número de teléfono';
    }
    if (phone.length != 10) {
      return 'Ingrese exactamente 10 dígitos';
    }

    return null;
  }

  static String validateUserPassword(String password) {
    if (password.length < 4) {
      return 'Contraseña demasiado corta';
    }
    return null;
  }

  static String validateUserPasswords(String password, String password2) {
    if (!PasswordValidation.validate(password, password2)) {
      return 'Las contraseñas no coinciden';
    }
    return null;
  }
}
