import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/utils/currency_formatter.dart';
import 'providers/favorites_provider.dart';

class FavoritesScreen extends ConsumerWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favorites = ref.watch(favoritesProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Favorites')),
      body: favorites.isEmpty
          ? const Center(child: Text('No favorite foods'))
          : ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final food = favorites[index];

                return ListTile(
                  leading: Image.asset(
                    food.image,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                  title: Text(food.name),
                  subtitle: Text(CurrencyFormatter.format(food.price)),
                );
              },
            ),
    );
  }
}
