
import 'package:be_my_courier/screens/user_address_screen.dart';
import 'package:be_my_courier/core/utils/app_assets.dart';
import 'package:be_my_courier/core/utils/app_text_styles.dart';
import 'package:be_my_courier/widgets/account_confirmation.dart';
import 'package:be_my_courier/widgets/app_button.dart';
import 'package:be_my_courier/widgets/app_gradient_button.dart';
import 'package:be_my_courier/widgets/app_text_field.dart';

import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';
import '../widgets/login_with_biometric.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static const String route = '/signup';

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
                  AppTextStyles.kFont12ptAmberleading,
                  const SizedBox(
                    height: 5,
                  ),
                  const AccountComfirmation(),
                  const SizedBox(
                    height: 20,
                  ),
                  AppTextStyles.kUserName,
                  const SizedBox(
                    height: 10,
                  ),
                  const AppTextField(
                      hinttext: 'User Name',
                      isPasword: false,
                      keyboardType: TextInputType.text),
                  const SizedBox(
                    height: 10,
                  ),
                  AppTextStyles.kTitleEmail,
                  const SizedBox(
                    height: 10,
                  ),
                  const AppTextField(
                      hinttext: 'Email',
                      isPasword: false,
                      keyboardType: TextInputType.emailAddress),
                  const SizedBox(
                    height: 20,
                  ),
                  AppTextStyles.kTitleEmail,
                  const SizedBox(
                    height: 10,
                  ),
                  const AppTextField(
                      hinttext: 'Password',
                      isPasword: true,
                      keyboardType: TextInputType.visiblePassword),
                  const SizedBox(
                    height: 10,
                  ),
                  AppTextStyles.kConfirmPassword,
                  const SizedBox(
                    height: 10,
                  ),
                  const AppTextField(
                      hinttext: 'Password',
                      isPasword: true,
                      keyboardType: TextInputType.visiblePassword),
                  Align(
                    alignment: Alignment.centerRight,
                    child: AppTextStyles.kForgetTitle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: AppGradientButton(
                      onPressed: () {
                        Navigator.pushNamed(context, UserAddressScreen.route);
                      },
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xffF5A825),
                          Color(0XFFF6CE50),
                        ],
                      ),
                      leadingTextStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins-Medium.ttf  '),
                      leadingtext: 'NEXT',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: AppTextStyles.kSignUpButton,
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
                            color: Color(0xfffFFFFF),
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
                    buttonText: 'Sign up with Apple',
                    backgroundColor: const Color(0xff000000),
                    color: const Color(0xffFFFFFF),
                    verticalPadding: 12,
                    assetImage: AppAssets.appleIcon,
                    leadingTextStyle: const TextStyle(color: Color(0xffFFFFFF)),
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
