import '../meal_ports.dart';

abstract class Meal {
  String name;
  String? image;
  Price price;
  Allergens allergens;
  Additives additives;
  MealCategory category;

  Meal(
      {required this.name,
      this.image,
      required this.price,
      this.allergens = Allergens.none,
      this.additives = Additives.none,
      required this.category});
}
