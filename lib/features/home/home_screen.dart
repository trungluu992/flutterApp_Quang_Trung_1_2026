import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/home_provider.dart';
import 'widgets/category_card.dart';
import 'widgets/food_card.dart';
import 'widgets/restaurant_card.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoriesProvider);
    final restaurants = ref.watch(restaurantsProvider);
    final foods = ref.watch(foodsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Food Delivery')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search food...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              'Categories',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),

            SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final item = categories[index];

                  return CategoryCard(icon: item.icon, name: item.name);
                },
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              'Popular Restaurants',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),

            ...restaurants.map(
              (restaurant) => RestaurantCard(
                name: restaurant.name,
                rating: restaurant.rating,
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              'Popular Foods',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),

            ...foods.map(
              (food) => FoodCard(name: food.name, price: food.price),
            ),
          ],
        ),
      ),
    );
  }
}
