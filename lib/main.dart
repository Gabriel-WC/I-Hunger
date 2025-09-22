import 'package:flutter/material.dart';
import 'views/splash_view.dart';
import 'views/login_view.dart';
import 'views/register_view.dart';
import 'views/home_view.dart';
import 'views/restaurant_view.dart';
import 'views/product_view.dart';
import 'views/cart_view.dart';
import 'views/checkout_view.dart';
import 'views/review_view.dart';
import 'views/profile_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuickOrder',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const SplashView(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => const LoginView(),
        '/register': (context) => const RegisterView(),
        '/home': (context) => const HomeView(),
        '/restaurant': (context) => const RestaurantView(),
        '/product': (context) => const ProductView(),
        '/cart': (context) => const CartView(),
        '/checkout': (context) => const CheckoutView(),
        '/review': (context) => const ReviewView(),
        '/profile': (context) => const ProfileView(),
      },
    );
  }
}