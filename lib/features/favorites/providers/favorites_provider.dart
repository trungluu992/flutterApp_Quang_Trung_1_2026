import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../home/models/food.dart';

class FavoritesNotifier extends StateNotifier<List<Food>> {
  FavoritesNotifier() : super([]);

  bool isFavorite(Food food) {
    return state.any((item) => item.id == food.id);
  }

  void toggleFavorite(Food food) {
    if (isFavorite(food)) {
      state = state.where((item) => item.id != food.id).toList();
    } else {
      state = [...state, food];
    }
  }
}

final favoritesProvider = StateNotifierProvider<FavoritesNotifier, List<Food>>(
  (ref) => FavoritesNotifier(),
);

final favoritesCountProvider = Provider<int>((ref) {
  return ref.watch(favoritesProvider).length;
});
