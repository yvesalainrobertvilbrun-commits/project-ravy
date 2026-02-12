import 'user.dart';

class AuthService {
  static UserProfile? currentUser;

  static void login(String name) {
    currentUser = UserProfile(username: name);
  }

  static void logout() {
    currentUser = null;
  }
}
