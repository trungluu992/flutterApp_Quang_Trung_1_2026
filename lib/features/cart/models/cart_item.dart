import '../../home/models/food.dart';

class CartItem {
  final Food food;
  final int quantity;

  const CartItem({required this.food, required this.quantity});

  CartItem copyWith({Food? food, int? quantity}) {
    return CartItem(
      food: food ?? this.food,
      quantity: quantity ?? this.quantity,
    );
  }
}
