import 'package:flutter/material.dart';
import 'package:foodapp/models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  const FoodPage({super.key, required this.food});

  @override
  State<FoodPage> createState() => _FoodPageState();
}
class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.food.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(widget.food.imagePath),
            const SizedBox(height: 16),
            Text(
              widget.food.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(widget.food.description),
            const SizedBox(height: 8),
            Text(
              'Price: \$${widget.food.price.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Category: ${widget.food.category.toString().split('.').last}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
 Text(
              'Available Add-ons:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.food.availableAddons.length,
                itemBuilder: (context, index) {
                  final addon = widget.food.availableAddons[index];
                  return ListTile(
                    title: Text(addon.name),
                    trailing: Text('\$${addon.price.toStringAsFixed(2)}'),
                  );
                },
              ),
            ),
ElevatedButton(
              onPressed: () {
                // Handle add to cart action
                // You can add functionality to add the selected food to the cart
              },
              child: Text('Add to Cart'),
            ),
          ],
        ),
    ),
);
}
}
