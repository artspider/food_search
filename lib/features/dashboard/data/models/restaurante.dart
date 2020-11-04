import 'package:food_search/features/dashboard/data/models/address.dart';
import 'package:food_search/features/dashboard/data/models/rating.dart';
import 'package:food_search/features/dashboard/data/models/review.dart';

class Restaurante {
  String name;
  List<String> tags;
  Address address;
  String preparationTime;
  String picture;
  bool acceptsReservations;
  bool hasMenu;
  //Menu menu;
  String servesCuisine;
  Rating starRating;
  String openingHours;
  String paymentAccepted;
  String priceRange;
  String email;
  String logo;
  List<Review> reviews;
  String telephone;
  double latitude;
  double longitude;
  String slogan;
  String description;
  String url;
  String facebook;

  Restaurante({
    this.name,
    this.tags,
    this.address,
    this.preparationTime,
    this.picture,
    this.acceptsReservations,
    this.hasMenu,
    this.description,
    this.email,
    this.facebook,
    this.latitude,
    this.logo,
    this.longitude,
    this.openingHours,
    this.paymentAccepted,
    this.priceRange,
    this.reviews,
    this.servesCuisine,
    this.starRating,
    this.slogan,
    this.telephone,
    this.url,
  });
}
