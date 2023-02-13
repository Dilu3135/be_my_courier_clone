import 'package:flutter/material.dart';

import '../screens/sign_in.dart';
import '../screens/sign_up.dart';
import '../screens/splash_screen.dart';
import '../screens/user_address_screen.dart';

class AppRouter {
  static final Map<String, Widget Function(BuildContext)> myRoutes = {
    SplashScreen.route: (context) => const SplashScreen(),
    SignInScreen.route: (context) => const SignInScreen(),
    SignUpScreen.route: (context) => const SignUpScreen(),
    UserAddressScreen.route: (context) => const UserAddressScreen(),
  };
}
