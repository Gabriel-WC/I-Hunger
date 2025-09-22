import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              child: Icon(Icons.person, size: 50),
            ),
            const SizedBox(height: 16),
            const Text(
              'João Silva',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text('joao.silva@email.com'),
            const SizedBox(height: 30),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Meus Dados'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('Histórico de Pedidos'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.red,
                  side: const BorderSide(color: Colors.red),
                ),
                child: const Text('Sair'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}