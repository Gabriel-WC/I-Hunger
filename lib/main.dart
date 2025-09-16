import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'services/user_service.dart';
import 'views/splash_view.dart';
import 'views/login_view.dart';
import 'views/register_view.dart';
import 'views/home_view.dart';
import 'views/restaurant_detail_view.dart';
import 'views/product_view.dart';
import 'views/cart_view.dart';
import 'views/checkout_view.dart';
import 'views/review_view.dart';
import 'views/profile_view.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => UserService(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I-Hunger',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.grey[50],
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
          elevation: 2,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          filled: true,
          fillColor: Colors.grey[100],
        ),
      ),
      home: const SplashView(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => const LoginView(),
        '/register': (context) => const RegisterView(),
        '/home': (context) => const HomeView(),
        '/restaurant': (context) => const RestaurantDetailView(),
        '/product': (context) => const ProductView(),
        '/cart': (context) => const CartView(),
        '/checkout': (context) => const CheckoutView(),
        '/review': (context) => const ReviewView(),
        '/profile': (context) => const ProfileView(),
      },
    );
  }
}
