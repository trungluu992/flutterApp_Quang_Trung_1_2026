import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_assets.dart';
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
    Restaurant(
      id: '1',
      name: 'Pizza House',
      imageUrl: AppAssets.pizzaHouse,
      rating: 4.8,
    ),
    Restaurant(
      id: '2',
      name: 'Burger King',
      imageUrl: AppAssets.burgerKing,
      rating: 4.5,
    ),
    Restaurant(
      id: '3',
      name: 'Sushi Master',
      imageUrl: AppAssets.sushiMaster,
      rating: 4.9,
    ),
  ],
);

final foodsProvider = Provider<List<Food>>(
  (ref) => const [
    Food(
      id: '1',
      name: 'Pepperoni Pizza',
      image: AppAssets.pizza,
      price: 12.99,
      rating: 4.8,
      description: 'Classic pepperoni pizza with mozzarella cheese.',
    ),
    Food(
      id: '2',
      name: 'Cheese Burger',
      image: AppAssets.burger,
      price: 9.99,
      rating: 4.5,
      description: 'Juicy beef burger with cheddar cheese.',
    ),
    Food(
      id: '3',
      name: 'Coca Cola',
      image: AppAssets.coke,
      price: 2.99,
      rating: 4.7,
      description: 'Refreshing ice cold Coca Cola.',
    ),
    Food(
      id: '4',
      name: 'Strawberry Cake',
      image: AppAssets.cake,
      price: 5.99,
      rating: 4.8,
      description: 'Sweet strawberry cake with cream topping.',
    ),
  ],
);
