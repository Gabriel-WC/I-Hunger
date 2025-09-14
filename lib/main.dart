import 'package:flutter/material.dart';
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
import 'widgets/splash_wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I-Hunger',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const SplashView(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => const SplashWrapper(child: LoginView()),
        '/register': (context) => const SplashWrapper(child: RegisterView()),
        '/home': (context) => const SplashWrapper(child: HomeView()),
        '/restaurant': (context) => const SplashWrapper(child: RestaurantDetailView()),
        '/product': (context) => const SplashWrapper(child: ProductView()),
        '/cart': (context) => const SplashWrapper(child: CartView()),
        '/checkout': (context) => const SplashWrapper(child: CheckoutView()),
        '/review': (context) => const SplashWrapper(child: ReviewView()),
        '/profile': (context) => const SplashWrapper(child: ProfileView()),
      },
    );
  }
}