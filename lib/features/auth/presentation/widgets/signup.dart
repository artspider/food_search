import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_search/features/auth/data/models/user.dart';
import 'package:food_search/features/auth/presentation/pages/signup_button.dart';
import 'package:food_search/features/auth/presentation/pages/signup_validation.dart';
import 'package:food_search/features/auth/presentation/provider/user_provider.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  User user = User();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Declaramos una instancia del User Provider
    final UserProvider userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Image.asset(
                  "assets/images/sign_up.png",
                  width: 270.0,
                  height: 187.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      maxLength: 40,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(r'[a-zA-Z]+|\s'),
                        ),
                      ],
                      validator: (value) {
                        user.name = value;
                        return SignupValidation.validateUserName(value);
                      },
                      decoration: buildInputDecoration(
                        'Nombre',
                        Icon(Icons.person),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: TextFormField(
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r'\s')),
                        ],
                        validator: (value) {
                          user.email = value;
                          return SignupValidation.validateUserEmail(value);
                        },
                        decoration: buildInputDecoration(
                          'Email',
                          Icon(Icons.email),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: TextFormField(
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        validator: (value) {
                          user.phone = value;
                          return SignupValidation.validateUserPhone(value);
                        },
                        decoration: buildInputDecoration(
                          'Teléfono',
                          Icon(Icons.phone),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: TextFormField(
                        obscureText: true,
                        validator: (value) {
                          user.password = value;
                          return SignupValidation.validateUserPassword(value);
                        },
                        decoration: buildInputDecoration(
                          'Password',
                          Icon(Icons.lock),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: TextFormField(
                        obscureText: true,
                        validator: (value) {
                          return SignupValidation.validateUserPasswords(
                              user.password, value);
                        },
                        decoration: buildInputDecoration(
                          'Confirmar Password',
                          Icon(Icons.lock),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 20.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 60.0,
                        child: SignupButton(
                          user: user,
                          formKey: _formKey,
                          userProvider: userProvider,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration(String hintText, Icon icon) =>
      InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 10.0,
        ),
        prefixIcon: icon,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14.0,
        ),
      );
}
