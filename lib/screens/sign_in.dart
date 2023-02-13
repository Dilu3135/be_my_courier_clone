import 'package:be_my_courier/core/utils/app_colors.dart';
import 'package:be_my_courier/screens/sign_up.dart';
import 'package:be_my_courier/core/utils/app_assets.dart';
import 'package:be_my_courier/core/utils/app_text_styles.dart';
import 'package:be_my_courier/widgets/account_confirmation.dart';
import 'package:be_my_courier/widgets/app_button.dart';
import 'package:be_my_courier/widgets/app_gradient_button.dart';
import 'package:be_my_courier/widgets/app_text_field.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';
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
                  AppTextStyles.kFont12ptAmber,
                  const SizedBox(
                    height: 5,
                  ),
                  const AccountComfirmation(),
                  const SizedBox(
                    height: 40,
                  ),
                  AppTextStyles.kTitleEmail,
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
                  AppTextStyles.kTitlePassword,
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
                  Align(
                    alignment: Alignment.centerRight,
                    child: AppTextStyles.kForgetTitle,
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
                  Center(
                    child: AppTextStyles.kForgetTitle,
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
                          backgroundColor: AppColors.kblueFacebook,
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
                          backgroundColor: AppColors.kRedColor,
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
                    backgroundColor: AppColors.kBlackColor,
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
