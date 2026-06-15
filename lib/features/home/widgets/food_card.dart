import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String name;
  final double price;

  const FoodCard({super.key, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.fastfood),
        title: Text(name),
        subtitle: Text('\$${price.toStringAsFixed(2)}'),
      ),
    );
  }
}
