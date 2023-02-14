import 'package:be_my_courier/core/utils/app_colors.dart';
import 'package:be_my_courier/screens/sign_up.dart';
import 'package:be_my_courier/core/utils/app_assets.dart';
import 'package:be_my_courier/core/utils/app_text_styles.dart';
import 'package:be_my_courier/widgets/account_confirmation.dart';
import 'package:be_my_courier/widgets/app_gradient_button.dart';
import 'package:be_my_courier/widgets/app_text_field.dart';
import 'package:be_my_courier/widgets/social_login.dart';
import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/login_with_biometric.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  // ===========================================================================
  // Route
  // ===========================================================================
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
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AuthenticationAppBar(),
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
                  // ===========================================================
                  // Heading
                  // ===========================================================
                  Text(
                    'Sign In',
                    style: AppTextStyles.kSignIn,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  // ===========================================================
                  // Don't have an account text
                  // ===========================================================
                  const AccountComfirmation(),
                  const SizedBox(
                    height: 40,
                  ),
                  // ===========================================================
                  // Email
                  // ===========================================================
                  Text(
                    'Email Address',
                    style: AppTextStyles.normalTextTitle,
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
                  // ===========================================================
                  // Password
                  // ===========================================================
                  Text(
                    'Password',
                    style: AppTextStyles.normalTextTitle,
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
                  // ===========================================================
                  // Sign in Button
                  // ===========================================================
                  Center(
                    child: AppGradientButton(
                      gradient: AppColors.appGradient,
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
                  // ===========================================================
                  // Forget Password
                  // ===========================================================
                  const Center(
                    // Forget title
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
                    height: 7,
                  ),
                  // ===========================================================
                  // Social Logins
                  // ===========================================================
                  const SocialLoginColumn(),
                  // ===========================================================
                  // Biometric Login
                  // ===========================================================
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
