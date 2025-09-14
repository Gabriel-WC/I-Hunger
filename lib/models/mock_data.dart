class Restaurant {
  final String name;
  final String category;
  final double rating;
  final int deliveryTime;
  final double deliveryFee;

  Restaurant({
    required this.name,
    required this.category,
    required this.rating,
    required this.deliveryTime,
    required this.deliveryFee,
  });
}

class Product {
  final String name;
  final String description;
  final double price;
  final String category;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.category,
  });
}

// Dados mockados
List<Restaurant> restaurants = [
  Restaurant(
    name: 'Pizzaria do Zé',
    category: 'Pizza • Italiana',
    rating: 4.7,
    deliveryTime: 30,
    deliveryFee: 5.99,
  ),
  Restaurant(
    name: 'Burger House',
    category: 'Hambúrguer • Americana',
    rating: 4.5,
    deliveryTime: 25,
    deliveryFee: 4.99,
  ),
  Restaurant(
    name: 'Sushi Palace',
    category: 'Japonesa • Sushi',
    rating: 4.8,
    deliveryTime: 40,
    deliveryFee: 7.99,
  ),
];

List<Product> menuItems = [
  Product(
    name: 'Pizza Margherita',
    description: 'Molho de tomate, mussarela, manjericão fresco',
    price: 32.90,
    category: 'Pizzas',
  ),
  Product(
    name: 'Pizza Pepperoni',
    description: 'Molho de tomate, mussarela, pepperoni',
    price: 38.90,
    category: 'Pizzas',
  ),
  Product(
    name: 'Pizza Quatro Queijos',
    description: 'Mussarela, parmesão, gorgonzola, provolone',
    price: 35.90,
    category: 'Pizzas',
  ),
];