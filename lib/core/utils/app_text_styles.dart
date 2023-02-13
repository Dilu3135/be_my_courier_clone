import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle kFont12ptGrey = TextStyle(
    color: Color(0xff6C6C6C),
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static Text kFont12ptAmber = const Text(
    'Sign In',
    style: TextStyle(
      color: Color(0xffF5A825),
      fontSize: 29,
      fontWeight: FontWeight.w700,
    ),
  );
  static Text kFont12ptAmberleading = const Text(
    'Sign Up',
    style: TextStyle(
      color: Color(0xffF5A825),
      fontSize: 29,
      fontWeight: FontWeight.w700,
    ),
  );

  static Text kTitleEmail = const Text(
    'Email Address',
    style: TextStyle(
      color: Color(0xff2C2C2C),
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
  );
  static Text kTitlePassword = const Text(
    'Password',
    style: TextStyle(
      color: Color(0xff2C2C2C),
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
  );

  static Text kForgetTitle = const Text(
    'Forget Password?',
    style: TextStyle(
      color: Color(0xff1669D3),
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
  );

  static Text kSignUpButton = const Text(
    'or Sign up with',
    style: AppTextStyles.kFont12ptGrey,
  );

  static Text kUserName = const Text(
    'Name',
    style: TextStyle(
      color: Color(0xff2C2C2C),
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
  );

  static Text kConfirmPassword = const Text(
    'Confirm Password',
    style: TextStyle(
      color: Color(0xff2C2C2C),
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
  );
}
