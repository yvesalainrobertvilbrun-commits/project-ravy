import 'user.dart';

class AuthService {
  static UserProfile? currentUser;

  // Login local (simulado)
  static void login(String name) {
    currentUser = UserProfile(username: name);
  }

  // Logout
  static void logout() {
    currentUser = null;
  }

  // Ganar experiencia al jugador
  static void gainXP(int value) {
    if (currentUser != null) {
      currentUser!.gainXP(value);
    }
  }
}
