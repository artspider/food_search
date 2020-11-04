import 'package:flutter/material.dart';
import 'package:food_search/features/auth/presentation/widgets/login.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
            image: AssetImage('assets/images/balloon-shape.png'),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child: Image(
                image: AssetImage('assets/images/FastFood-Logo.png'),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 30.0),
              child: Image(
                image: AssetImage('assets/images/online_groceries.png'),
              ),
            ),
          ),
          Center(
            child: Text(
              'El directorio de comida',
              style: TextStyle(
                //color: Color.fromRGBO(71, 34, 18, 1),
                color: Theme.of(context).textTheme.bodyText1.color,
                fontSize: 24.0,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Center(
            child: Container(
              width: 250,
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 50.0),
              child: Text(
                'Busca. Encuentra. Pide. Recibe. Disfruta',
                textAlign: TextAlign.center,
                softWrap: true,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  color: Color.fromRGBO(71, 34, 18, 1),
                  fontWeight: FontWeight.w200,
                  fontSize: 16.0,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          Center(
            child: FlatButton(
              minWidth: 300,
              height: 60,
              textColor: Color.fromRGBO(255, 240, 211, 1),
              color: Color.fromRGBO(252, 79, 50, 1),
              onPressed: () {
                gotoLogin(context);
              },
              child: Text(
                "INICIA AHORA",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void gotoLogin(context) {
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => Login(),
      ));
}
