import 'package:flutter/material.dart';

class AppTextStyles {
// =============================================================================
// this is use in both screen Signin and SignUp
// =============================================================================

  static const TextStyle kFont12ptGrey = TextStyle(
    color: Color(0xff6C6C6C),
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
//  Uper Text
  static Text kFont12ptAmber = const Text(
    'Sign In',
    style: TextStyle(
      color: Color(0xffF5A825),
      fontSize: 29,
      fontWeight: FontWeight.w700,
    ),
  );
  // uper text
  static Text kFont12ptAmberleading = const Text(
    'Sign Up',
    style: TextStyle(
      color: Color(0xffF5A825),
      fontSize: 29,
      fontWeight: FontWeight.w700,
    ),
  );
  //  Both have same email require
  static Text kTitleEmail = const Text(
    'Email Address',
    style: TextStyle(
      color: Color(0xff2C2C2C),
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
  );
  //  Both have same email require
  static Text kTitlePassword = const Text(
    'Password',
    style: TextStyle(
      color: Color(0xff2C2C2C),
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
  );
  //  below the password TextField
  static Text kForgetTitle = const Text(
    'Forget Password?',
    style: TextStyle(
      color: Color(0xff1669D3),
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
  );
  // this is use with the biomatric icon
  static Text kSignUpButton = const Text(
    'or Sign up with',
    style: AppTextStyles.kFont12ptGrey,
  );

  // ===========================================================================
  // User Address Screen
  // ===========================================================================
  // this is use in useraddress Screen
  static Text kUserName = const Text(
    'Name',
    style: TextStyle(
      color: Color(0xff2C2C2C),
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
  );
  // this is use in useraddress Screen
  static Text kConfirmPassword = const Text(
    'Confirm Password',
    style: TextStyle(
      color: Color(0xff2C2C2C),
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
  );
  // this is use in useraddress Screen
  static Text kAddress = const Text(
    'Street Address',
    style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: Colors.black,
        fontFamily: 'Poppins-Medium.ttf'),
  );
  // the phonenum use in useraddress Screen
  static Text kPhoneNum = const Text(
    'Phone Number',
    style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: Colors.black,
        fontFamily: 'Poppins-Medium.ttf'),
  );
  // ===========================================================================
  // this is use in Appgradient Button
  // ===========================================================================
  static TextStyle kAppButton = const TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );
}
