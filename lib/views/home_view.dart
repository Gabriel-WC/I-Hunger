import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> restaurants = [
      {
        'name': 'Pizzaria do Zé',
        'category': 'Pizza • Italiana',
        'rating': 4.7,
        'deliveryTime': 30,
        'deliveryFee': 5.99,
      },
      {
        'name': 'Burger House',
        'category': 'Hambúrguer • Americana',
        'rating': 4.5,
        'deliveryTime': 25,
        'deliveryFee': 4.99,
      },
      {
        'name': 'Sushi Palace',
        'category': 'Japonesa • Sushi',
        'rating': 4.8,
        'deliveryTime': 40,
        'deliveryFee': 7.99,
      },
    ];
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurantes'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
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
                restaurant['name'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(restaurant['category']),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      Text(restaurant['rating'].toString()),
                      const SizedBox(width: 16),
                      Icon(Icons.access_time, size: 16),
                      Text('${restaurant['deliveryTime']} min'),
                    ],
                  ),
                ],
              ),
              trailing: Text(
                restaurant['deliveryFee'] == 0
                  ? 'Grátis'
                  : 'R\$${restaurant['deliveryFee']}',
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