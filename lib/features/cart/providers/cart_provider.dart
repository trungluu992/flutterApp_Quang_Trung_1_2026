import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../home/models/food.dart';
import '../models/cart_item.dart';

class CartNotifier extends StateNotifier<List<CartItem>> {
  CartNotifier() : super([]);

  void addToCart(Food food) {
    final index = state.indexWhere((item) => item.food.id == food.id);

    if (index >= 0) {
      final updated = [...state];

      updated[index] = updated[index].copyWith(
        quantity: updated[index].quantity + 1,
      );

      state = updated;
    } else {
      state = [...state, CartItem(food: food, quantity: 1)];
    }
  }

  void increaseQuantity(String foodId) {
    state = state.map((item) {
      if (item.food.id == foodId) {
        return item.copyWith(quantity: item.quantity + 1);
      }

      return item;
    }).toList();
  }

  void decreaseQuantity(String foodId) {
    final updated = <CartItem>[];

    for (final item in state) {
      if (item.food.id == foodId) {
        if (item.quantity > 1) {
          updated.add(item.copyWith(quantity: item.quantity - 1));
        }
      } else {
        updated.add(item);
      }
    }

    state = updated;
  }
}

final cartProvider = StateNotifierProvider<CartNotifier, List<CartItem>>(
  (ref) => CartNotifier(),
);

final cartItemCountProvider = Provider<int>((ref) {
  final cartItems = ref.watch(cartProvider);

  return cartItems.fold(0, (sum, item) => sum + item.quantity);
});

final cartTotalProvider = Provider<int>((ref) {
  final cartItems = ref.watch(cartProvider);

  return cartItems.fold(
    0,
    (sum, item) => sum + item.food.price * item.quantity,
  );
});
