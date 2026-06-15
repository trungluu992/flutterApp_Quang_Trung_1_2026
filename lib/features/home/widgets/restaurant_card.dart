import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  final String name;
  final double rating;

  const RestaurantCard({super.key, required this.name, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const CircleAvatar(child: Icon(Icons.restaurant)),
        title: Text(name),
        subtitle: Text('⭐ $rating'),
      ),
    );
  }
}
