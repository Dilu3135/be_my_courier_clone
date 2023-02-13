import 'package:be_my_courier/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static final ThemeData myTheme = ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: AppColors.primarySwatch,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.backgroundColor,
          elevation: 0,
        ),
        scaffoldBackgroundColor: AppColors.backgroundColor,
      );
}