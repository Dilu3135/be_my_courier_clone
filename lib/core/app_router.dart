import 'package:be_my_courier/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../screens/sign_in.dart';
import '../screens/sign_up.dart';
import '../screens/splash_screen.dart';
import '../screens/user_address_screen.dart';

class AppRouter {
  static final Map<String, Widget Function(BuildContext)> myRoutes = {
// =============================================================================
// Splash Screen Routes
// =============================================================================
    SplashScreen.route: (_) => const SplashScreen(),
    // =========================================================================
    // Authentication Routes
    // =========================================================================
    SignInScreen.route: (_) => const SignInScreen(),
    SignUpScreen.route: (_) => const SignUpScreen(),
    UserAddressScreen.route: (_) => const UserAddressScreen(),
    HomeScreen.route: (_) => const HomeScreen(),
  };
}
