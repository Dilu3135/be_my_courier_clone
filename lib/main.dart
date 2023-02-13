import 'package:be_my_courier/core/app_router.dart';
import 'package:be_my_courier/core/app_theme.dart';
import 'package:be_my_courier/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.myTheme,
      routes: AppRouter.myRoutes,
      initialRoute: SplashScreen.route,
    );
  }
}
