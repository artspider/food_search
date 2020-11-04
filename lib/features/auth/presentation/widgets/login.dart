import 'package:flutter/material.dart';
import 'package:food_search/features/auth/presentation/pages/login_validation.dart';
import 'package:food_search/features/auth/presentation/widgets/login_button.dart';
import 'package:food_search/features/auth/presentation/widgets/signup.dart';
import 'package:provider/provider.dart';

import 'package:food_search/features/auth/data/models/user.dart';
import 'package:food_search/features/auth/presentation/provider/user_provider.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //Instanciamos el model User
  User user = User();
  //Creamos el key para el formulario
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    //Declaramos una instancia del User Provider
    final UserProvider userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Image.asset(
                  "assets/images/authentication.png",
                  width: 270.0,
                  height: 187.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
              child: Center(
                child: Text(
                  'Ingresa tus credenciales registradas para aceder',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontSize: 18.0,
                    height: 1.3,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        user.email = value;
                        return LoginValidation.validateUserEmail(value);
                      },
                      decoration: buildInputDecoration(
                        'Email',
                        Icon(Icons.mail_sharp),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      obscureText: true,
                      validator: (value) {
                        user.password = value;
                        return LoginValidation.validateUserPassword(value);
                      },
                      decoration: buildInputDecoration(
                        'Password',
                        Icon(Icons.lock),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '¿Aún no tienes cuenta? ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            gotoSignup(context);
                          },
                          child: Text(
                            'Consigue una',
                            style: TextStyle(
                              color: Colors.red[300],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 20.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 60.0,
                        child: LoginButton(
                            user: user,
                            formKey: _formKey,
                            userProvider: userProvider),
                      ),
                    ),
                  ],
                ),
              ),
            )
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

void gotoSignup(context) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignUp(),
      ));
}
