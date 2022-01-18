import 'package:flutter/foundation.dart';

import '../meal_ports.dart';

class MealCollection {
  MealCategory category;
  List<Meal> meals;

  MealCollection({required this.category, required this.meals});
}
