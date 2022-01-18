import '../meal_ports.dart';

abstract class Meal {
  String name;
  String image;
  Price price;
  Allergens allergens;
  Additives additives;
  MealCategory category;
}
