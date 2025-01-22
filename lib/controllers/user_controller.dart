import '../models/user.dart';

class UserController {
  static User? _registeredUser;

  static User? getUser() {
    return _registeredUser;
  }

  static void registerUser(User user) {
    _registeredUser = user;
  }

  static bool isUserRegistered() {
    return _registeredUser != null;
  }
}