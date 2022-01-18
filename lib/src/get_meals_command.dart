import 'package:common_ports/common_ports.dart';
import 'package:meal_ports/meal_ports.dart';

abstract class GetMealsCommand implements Command<MealQuery, List<Meal>> {}
