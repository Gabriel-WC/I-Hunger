class CartItem {
  final String name;
  final double price;
  int quantity;

  CartItem({
    required this.name,
    required this.price,
    this.quantity = 1,
  });
}

class Cart {
  static final Cart _instance = Cart._internal();
  factory Cart() => _instance;
  Cart._internal();

  static Cart get instance => _instance;

  final List<CartItem> _items = [];

  void addItem(String name, double price) {
    for (var item in _items) {
      if (item.name == name) {
        item.quantity++;
        return;
      }
    }
    _items.add(CartItem(name: name, price: price));
  }

  void removeItem(String name) {
    _items.removeWhere((item) => item.name == name);
  }

  void increaseQuantity(String name) {
    for (var item in _items) {
      if (item.name == name) {
        item.quantity++;
        return;
      }
    }
  }

  void decreaseQuantity(String name) {
    for (var item in _items) {
      if (item.name == name) {
        item.quantity--;
        if (item.quantity <= 0) {
          removeItem(name);
        }
        return;
      }
    }
  }

  double get total {
    double total = 0;
    for (var item in _items) {
      total += item.price * item.quantity;
    }
    return total;
  }

  List<CartItem> get items => List.from(_items);

  void clear() {
    _items.clear();
  }

  int get itemCount {
    int count = 0;
    for (var item in _items) {
      count += item.quantity;
    }
    return count;
  }
}