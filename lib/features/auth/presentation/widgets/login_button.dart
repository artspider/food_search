import 'package:flutter/material.dart';
import 'package:food_search/core/validation/password_validation.dart';
import 'package:food_search/features/auth/data/models/user.dart';
import 'package:food_search/features/auth/presentation/provider/user_provider.dart';
import 'package:food_search/features/dashboard/presentation/widgets/dashboard.dart';

class LoginButton extends StatelessWidget {
  LoginButton({
    Key key,
    @required this.user,
    @required GlobalKey<FormState> formKey,
    @required this.userProvider,
  })  : _formKey = formKey,
        super(key: key);

  final User user;
  final GlobalKey<FormState> _formKey;
  final UserProvider userProvider;

  final sb = SnackBar(
    content: Text('¡Usuario o contraseña incorrectos!'),
  );

  final snackBartoDashBorad = SnackBar(
    content: Row(
      children: [
        CircularProgressIndicator(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text('Ingresando a tu DashBoard'),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        'CONTINUAR',
        style: TextStyle(
          color: Color.fromARGB(255, 255, 249, 239),
          fontWeight: FontWeight.w600,
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      onPressed: () {
        if (!_formKey.currentState.validate()) {
          return;
        }
        var returnedUser = userProvider.getUser(user.email);
        returnedUser == null
            ? Scaffold.of(context).showSnackBar(sb)
            : validatePassword(context, returnedUser, user);
        _formKey.currentState.save();
      },
    );
  }

  validatePassword(context, User returnedUser, User user) async {
    if (!PasswordValidation.validate(returnedUser.password, user.password)) {
      Scaffold.of(context).showSnackBar(sb);
    } else {
      Scaffold.of(context).showSnackBar(snackBartoDashBorad);
      await Future.delayed(Duration(seconds: 4));
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Dashboard(),
          ));
    }
  }
}
