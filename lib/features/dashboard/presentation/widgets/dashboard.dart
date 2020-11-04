import 'package:flutter/material.dart';
import 'package:food_search/features/auth/presentation/provider/user_provider.dart';
import 'package:food_search/features/dashboard/data/models/rating.dart';
import 'package:food_search/features/dashboard/data/models/restaurante.dart';
import 'package:food_search/features/dashboard/presentation/pages/RestauranteCard.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Restaurante restaurante1 = Restaurante(
    name: 'Mac Burger',
    picture: 'assets/images/mcburger-rest.png',
    starRating: Rating(ratingValue: 4.7),
    tags: ['Hamburguesas', 'Alitas', 'Nachos'],
    preparationTime: '20',
  );

  Restaurante restaurante2 = Restaurante(
    name: 'La Condesa',
    picture: 'assets/images/krab-rest.jpg',
    starRating: Rating(ratingValue: 4.2),
    tags: ['Langosta', 'Camarón', 'Mojarra'],
    preparationTime: '35',
  );

  Restaurante restaurante3 = Restaurante(
    name: 'La Tablita',
    picture: 'assets/images/latablita-rest.jpg',
    starRating: Rating(ratingValue: 4.8),
    tags: ['Cortes', 'Asador', 'Tacos'],
    preparationTime: '40',
  );
  @override
  Widget build(BuildContext context) {
    final UserProvider userProvider = Provider.of<UserProvider>(context);
    var user = userProvider.user;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200.0,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Hola ',
                        style: Theme.of(context).textTheme.headline5.copyWith(
                              color: Color(0xffFFF0D7),
                            ),
                      ),
                      Text(
                        user.name,
                        style: Theme.of(context).textTheme.headline5.copyWith(
                              color: Color(0xffFFF0D7),
                            ),
                      ),
                    ],
                  ),
                  Text(
                    '¿Qué quieres comer hoy?',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          color: Color.fromARGB(170, 255, 240, 215),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w100,
                        ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    style: TextStyle(
                      color: Color(0xFFFFF0D7),
                    ),
                    decoration: buildInputDecoration(
                      'Buscar platillos o restaurantes',
                      Icon(
                        Icons.search,
                        color: Color(0xffFFF0D7),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xffFC4F32),
            ),
          ),
          Container(
            constraints: BoxConstraints(minWidth: double.infinity),
            decoration: BoxDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    'Populares cerca de ti',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            //width: double.infinity,
            height: 180.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                RestauranteCard(restaurante: restaurante1),
                RestauranteCard(restaurante: restaurante2),
                RestauranteCard(restaurante: restaurante3),
              ],
            ),
          ),
          Container(),
        ],
      ),
    );
  }

  InputDecoration buildInputDecoration(String hintText, Icon icon) =>
      InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        contentPadding: EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 10.0,
        ),
        prefixIcon: IconButton(
          icon: icon,
          onPressed: () {
            print('clic en el icon button');
          },
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14.0,
          color: Color(0x90FFF0D7),
        ),
        fillColor: Color(0xffFC836E),
        filled: true,
      );
}
