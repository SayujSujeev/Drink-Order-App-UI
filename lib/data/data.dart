import 'package:drink_order_app_ui/models/drink.dart';

final _blackBurry = Drink(
 imageUrl: 'assets/images/drink3.jpg',
 name: 'Blackberry',
 category: 'Fresh Drink',
 discount: 30,
 alcohol: 15,
 fruit: 35,
 water: 55,
 price: 15,
);

final _mentaCocktail = Drink(
 imageUrl: 'assets/images/drink1.jpg',
 name: 'Menta Cocktail',
 category: 'Fresh Drink',
 discount: 25,
 alcohol: 15,
 fruit: 25,
 water: 60,
 price: 8,
);

final _lemonCocktail = Drink(
 imageUrl: 'assets/images/drink2.jpg',
 name: 'Lemon Cocktail',
 category: 'Fresh Drink',
 discount: 20,
 alcohol: 15,
 fruit: 40,
 water: 45,
 price: 10,
);

final _orangeCocktail = Drink(
 imageUrl: 'assets/images/drink4.jpg',
 name: 'Orange Cocktail',
 category: 'Fresh Drink',
 discount: 25,
 alcohol: 15,
 fruit: 50,
 water: 35,
 price: 14,
);

final List<Drink> drinks = [
 _blackBurry,
 _mentaCocktail,
 _lemonCocktail,
 _orangeCocktail,
];

List<String> categoryList = [
 'Promotion',
  'Free Drink',
  'Happy Hour',
  'Coktails',
];
