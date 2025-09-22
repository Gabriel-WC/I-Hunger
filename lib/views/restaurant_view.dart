import 'package:flutter/material.dart';

class RestaurantView extends StatelessWidget {
  const RestaurantView ({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> restaurant = {
      'name': 'Pizzaria do Zé',
      'category': 'Pizza • Italiana',
      'rating': 4.7,
      'deliveryTime': 30,
      'deliveryFee': 5.99,
    };

    final List<Map<String, dynamic>> menuItems = [
      {'name': 'Pizza Margherita', 'price': 32.90},
      {'name': 'Pizza Pepperoni', 'price': 38.90},
      {'name': 'Pizza Quatro Queijos', 'price': 35.90},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(restaurant['name'].toString()),
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
                  restaurant['name'].toString(),
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '${restaurant['category']} • ⭐ ${restaurant['rating']}',
                  style: TextStyle(color: Colors.grey[600]),
                ),
                const SizedBox(height: 8),
                Text(
                  '${restaurant['deliveryTime']}-${restaurant['deliveryTime'] + 10} min • R\$${restaurant['deliveryFee']} entrega',
                  style: TextStyle(color: Colors.grey[600]),
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
                    product['name'].toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('R\$${product['price']}'),
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