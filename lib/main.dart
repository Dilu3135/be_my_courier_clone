import 'package:be_my_courier/screens/splash_screen.dart';
import 'package:be_my_courier/utils/app_colors.dart';
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
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: AppColors.primarySwatch,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.backgroundColor,
          elevation: 0,
        ),
        scaffoldBackgroundColor: AppColors.backgroundColor,
      ),
      home: const SplashScreen(),
    );
  }
}
