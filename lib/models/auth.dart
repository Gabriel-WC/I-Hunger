class Auth {
  static bool isLoggedIn = false;
  static String userName = 'Usuário';
  static String userEmail = 'usuario@email.com';
  static String userPhone = '(00) 00000-0000';
  static String userAddress = 'Rua Exemplo, 123';

  static void login(String name, String email, String phone, String address) {
    isLoggedIn = true;
    userName = name;
    userEmail = email;
    userPhone = phone;
    userAddress = address;
  }

  static void logout() {
    isLoggedIn = false;
    userName = 'Usuário';
    userEmail = 'usuario@email.com';
    userPhone = '(00) 00000-0000';
    userAddress = 'Rua Exemplo, 123';
  }

  static void updateProfile(String name, String email, String phone, String address) {
    userName = name;
    userEmail = email;
    userPhone = phone;
    userAddress = address;
  }
}
