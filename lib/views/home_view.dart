import 'package:flutter/material.dart';
import '../models/mock_data.dart';
import '../models/cart.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final Cart cart = Cart.instance;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurantes'),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
              ),
              if (cart.itemCount > 0)
                Positioned(
                  right: 8,
                  top: 8,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 16,
                      minHeight: 16,
                    ),
                    child: Text(
                      '${cart.itemCount}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          final restaurant = restaurants[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.restaurant, size: 40),
              title: Text(
                restaurant.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(restaurant.category),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      Text(restaurant.rating.toString()),
                      const SizedBox(width: 16),
                      Icon(Icons.access_time, size: 16),
                      Text('${restaurant.deliveryTime} min'),
                    ],
                  ),
                ],
              ),
              trailing: Text(
                restaurant.deliveryFee == 0
                  ? 'Grátis'
                  : 'R\$${restaurant.deliveryFee}',
              ),
              onTap: () {
                Navigator.pushNamed(context, '/restaurant');
              },
            ),
          );
        },
      ),
    );
  }
}