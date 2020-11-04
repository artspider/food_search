import 'package:flutter/material.dart';
import 'package:food_search/core/stringManagement/string_management.dart';
import 'package:food_search/features/dashboard/data/models/restaurante.dart';

class RestauranteCard extends StatelessWidget {
  const RestauranteCard({
    Key key,
    @required this.restaurante,
  }) : super(key: key);

  final Restaurante restaurante;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 200,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                restaurante.picture, // "assets/images/mcburger-rest.png"
                width: 190.0,
                height: 80.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                restaurante.name, // 'Mc Burger',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                StringManagement.arrayToString(restaurante.tags),
                style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w500,
                  wordSpacing: 4,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    restaurante.starRating.ratingValue.toString(), //  '4.7',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Container(
                    width: 65.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: Color(0xffFFF0D3),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.pin_drop,
                          size: 18.0,
                        ),
                        Text(
                          '300m',
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 2.0,
                  ),
                  Container(
                    width: 65.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: Color(0xffFFF0D3),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.timer,
                          size: 18.0,
                        ),
                        Text(
                          restaurante.preparationTime,
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
