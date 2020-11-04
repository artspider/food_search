import 'package:flutter/material.dart';

import 'package:food_search/features/auth/data/models/user.dart';
import 'package:food_search/features/auth/presentation/provider/user_provider.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({
    Key key,
    @required GlobalKey<FormState> formKey,
    @required this.user,
    @required this.userProvider,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final User user;
  final UserProvider userProvider;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        'REGISTRARSE',
        style: TextStyle(
          color: Color.fromARGB(255, 255, 249, 239),
          fontWeight: FontWeight.w600,
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      onPressed: () async {
        if (!_formKey.currentState.validate()) {
          return;
        }
        userProvider.user = user; // set user
        userProvider.users = user; // add user to a List<user>
        final savedDataMessage = SnackBar(
          content: Text('¡Los datos se han guardado!'),
        );
        Scaffold.of(context).showSnackBar(savedDataMessage);
        _formKey.currentState.save();
        //sleep(Duration(seconds: 3));
        await Future.delayed(Duration(seconds: 3));
        Navigator.pop(context);
      },
    );
  }
}
