import 'package:flutter/foundation.dart';

class User {
  final String name;
  final String email;
  final String phone;
  final String address;

  User({
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
  });

  User copyWith({
    String? name,
    String? email,
    String? phone,
    String? address,
  }) {
    return User(
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      address: address ?? this.address,
    );
  }
}

class UserService with ChangeNotifier {
  User? _currentUser;
  bool _isLoggedIn = false;

  User? get currentUser => _currentUser;
  bool get isLoggedIn => _isLoggedIn;

  void login(User user) {
    _currentUser = user;
    _isLoggedIn = true;
    notifyListeners();
  }

  void logout() {
    _currentUser = null;
    _isLoggedIn = false;
    notifyListeners();
  }

  void updateProfile(User updatedUser) {
    _currentUser = updatedUser;
    notifyListeners();
  }
} 
