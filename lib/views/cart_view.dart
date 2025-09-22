import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrinho'),
      ),
      body: const Center(
        child: Text(
          'Carrinho vazio',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}