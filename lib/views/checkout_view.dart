import 'package:flutter/material.dart';
import '../models/cart.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    final Cart cart = Cart.instance;
    final double subtotal = cart.total;
    final double deliveryFee = 5.99;
    final double total = subtotal + deliveryFee;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Endereço de Entrega',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Card(
              child: ListTile(
                leading: const Icon(Icons.location_on),
                title: const Text('Rua das Flores, 123'),
                subtitle: const Text('Centro, São Paulo - SP'),
                trailing: IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Forma de Pagamento',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const PaymentMethodCard(
              icon: Icons.credit_card,
              title: 'Cartão de Crédito',
              isSelected: true,
            ),
            const PaymentMethodCard(
              icon: Icons.money,
              title: 'Dinheiro',
              isSelected: false,
            ),
            const PaymentMethodCard(
              icon: Icons.account_balance_wallet,
              title: 'PIX',
              isSelected: false,
            ),
            const SizedBox(height: 20),
            const Text(
              'Resumo do Pedido',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Itens'),
                Text('R\$${subtotal.toStringAsFixed(2)}'),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Entrega'),
                Text('R\$${deliveryFee.toStringAsFixed(2)}'),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Total'),
                Text('R\$${total.toStringAsFixed(2)}', style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/review');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                child: const Text(
                  'Confirmar Pedido',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentMethodCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSelected;

  const PaymentMethodCard({
    super.key,
    required this.icon,
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isSelected ? Colors.orange.withOpacity(0.1) : null,
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        trailing: isSelected
            ? const Icon(Icons.check_circle, color: Colors.orange)
            : null,
        onTap: () {},
      ),
    );
  }
}