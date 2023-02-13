import 'package:be_my_courier/core/utils/app_colors.dart';
import 'package:be_my_courier/screens/sign_up.dart';
import 'package:be_my_courier/core/utils/app_assets.dart';
import 'package:be_my_courier/core/utils/app_text_styles.dart';
import 'package:be_my_courier/widgets/app_button.dart';
import 'package:be_my_courier/widgets/app_gradient_button.dart';
import 'package:be_my_courier/widgets/app_text_field.dart';
import 'package:be_my_courier/widgets/rich_text.dart';
import 'package:flutter/material.dart';

import '../widgets/login_with_biometric.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  static const String route = '/signin';

  // ===========================================================================
  // Build
  // ===========================================================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // =======================================================================
      // App bar
      // =======================================================================
      appBar: AppBar(
        title: const AppRichText(
          leadingText: 'Welcome to ',
          trailingText: 'BemyCourier',
          leadingTextStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          trailingTextStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.blue,
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          const Align(
            alignment: Alignment.bottomCenter,
            child: Image(
              image: AssetImage(AppAssets.bottomLeftDesign),
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextStyles.kFont12ptAmber,
                  const SizedBox(
                    height: 5,
                  ),
                  const AppRichText(
                    leadingText: "Don't have an account? ",
                    trailingText: 'Sign IN',
                    leadingTextStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    trailingTextStyle: TextStyle(
                      color: AppColors.kRedColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Email Address',
                    style: TextStyle(
                      color: Color(0xff2C2C2C),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const AppTextField(
                    hinttext: 'Email',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Password',
                    style: TextStyle(
                      color: Color(0xff2C2C2C),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const AppTextField(
                    hinttext: 'Password',
                    isPasword: true,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: Color(0xff1669D3),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: AppGradientButton(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xffF5A825),
                          Color(0XFFF6CE50),
                        ],
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, SignUpScreen.route);
                      },
                      leadingTextStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      leadingtext: 'SIGN IN',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Center(
                    child: Text(
                      'or Login with',
                      style: AppTextStyles.kFont12ptGrey,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: AppSimpleButton(
                          onPressed: () {},
                          buttonText: 'Facebook',
                          backgroundColor: const Color(0xff4460A0),
                          verticalPadding: 15,
                          assetImage: AppAssets.facebooklIcon,
                          leadingTextStyle:
                              const TextStyle(color: Color(0xffFFFFFF)),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: AppSimpleButton(
                          onPressed: () {},
                          buttonText: 'Google',
                          verticalPadding: 15.0,
                          backgroundColor: const Color(0xffD9372B),
                          assetImage: AppAssets.gmailIcon,
                          leadingTextStyle: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AppSimpleButton(
                    onPressed: () {},
                    buttonText: 'Sign in with Apple',
                    backgroundColor: const Color(0xff000000),
                    color: Colors.white,
                    verticalPadding: 12,
                    assetImage: AppAssets.appleIcon,
                    leadingTextStyle: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Center(
                    child: LoginWithBiometric(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
