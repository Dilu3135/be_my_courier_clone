import 'package:flutter/material.dart';

class AppColors {
  // backgroud color
  static const Color backgroundColor = Color(0XFFE5E5E5);
  // google button
  static const Color kRedColor = Color(0xffDE0A06);
  // black color
  static const Color kBlackColor = Color(0xff000000);
  // facebook button
  static const Color kblueFacebook = Color(0xff4460A0);

  static const LinearGradient appGradient = LinearGradient(
    colors: [
      Color(0xffF5A825),
      Color(0XFFF6CE50),
    ],
  );

  static final MaterialColor primarySwatch = MaterialColor(0XFFF5A825, {
    50: const Color(0XFFF5A825).withOpacity(0.1),
    100: const Color(0XFFF5A825).withOpacity(0.2),
    200: const Color(0XFFF5A825).withOpacity(0.3),
    300: const Color(0XFFF5A825).withOpacity(0.4),
    400: const Color(0XFFF5A825).withOpacity(0.5),
    500: const Color(0XFFF5A825).withOpacity(0.6),
    600: const Color(0XFFF5A825).withOpacity(0.7),
    700: const Color(0XFFF5A825).withOpacity(0.8),
    800: const Color(0XFFF5A825).withOpacity(0.9),
    900: const Color(0XFFF5A825).withOpacity(1),
  });
}
