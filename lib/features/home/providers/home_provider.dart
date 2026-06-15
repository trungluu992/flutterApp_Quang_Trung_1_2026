import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/category.dart';
import '../models/food.dart';
import '../models/restaurant.dart';

final categoriesProvider = Provider<List<Category>>(
  (ref) => const [
    Category(id: '1', name: 'Pizza', icon: '🍕'),
    Category(id: '2', name: 'Burger', icon: '🍔'),
    Category(id: '3', name: 'Drink', icon: '🥤'),
    Category(id: '4', name: 'Dessert', icon: '🍰'),
  ],
);

final restaurantsProvider = Provider<List<Restaurant>>(
  (ref) => const [
    Restaurant(id: '1', name: 'Pizza House', imageUrl: '', rating: 4.8),
    Restaurant(id: '2', name: 'Burger King', imageUrl: '', rating: 4.5),
    Restaurant(id: '3', name: 'Sushi Master', imageUrl: '', rating: 4.9),
  ],
);

final foodsProvider = Provider<List<Food>>(
  (ref) => const [
    Food(
      id: '1',
      name: 'Pepperoni Pizza',
      imageUrl: '',
      price: 12.99,
      rating: 4.8,
    ),
    Food(
      id: '2',
      name: 'Cheese Burger',
      imageUrl: '',
      price: 9.99,
      rating: 4.5,
    ),
    Food(id: '3', name: 'Coca Cola', imageUrl: '', price: 2.99, rating: 4.7),
  ],
);
