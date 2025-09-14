import 'package:flutter/material.dart';
import '../models/mock_data.dart';

class RestaurantDetailView extends StatelessWidget {
  const RestaurantDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final restaurant = restaurants[0]; // Agora restaurants está acessível

    return Scaffold(
      appBar: AppBar(
        title: Text(restaurant.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            color: Colors.grey[300],
            child: const Icon(Icons.restaurant, size: 100),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  restaurant.name,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '${restaurant.category} • ⭐ ${restaurant.rating}',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 8),
                Text(
                  '${restaurant.deliveryTime}-${restaurant.deliveryTime + 10} min • R\$${restaurant.deliveryFee} entrega',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 16),
                const Divider(),
                const Text(
                  'Cardápio',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                final product = menuItems[index];
                return ListTile(
                  leading: const Icon(Icons.fastfood, size: 40),
                  title: Text(
                    product.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('R\$${product.price}'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.pushNamed(context, '/product');
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}