import 'package:be_my_courier/utils/app_assets.dart';
import 'package:be_my_courier/utils/app_text_styles.dart';
import 'package:be_my_courier/widgets/app_button.dart';
import 'package:be_my_courier/widgets/app_text_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  // ===========================================================================
  // Build
  // ===========================================================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // =======================================================================
      // App bar
      // =======================================================================
      appBar: AppBar(
        title: RichText(
          text: const TextSpan(
            text: 'Welcome to ',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'BemyCourier',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
      // =======================================================================
      // Body
      // =======================================================================
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppTextStyles.kFont12ptAmber,
            const SizedBox(
              height: 5,
            ),
            // =================================================================
            // Don't have an account text
            // =================================================================
            RichText(
              text: const TextSpan(
                text: "Don't have an account?",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Sign up',
                    style: TextStyle(
                      color: Color(0xffDE0A06),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Email Adress',
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
                isPasword: false,
                keyboardType: TextInputType.emailAddress),
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
                keyboardType: TextInputType.visiblePassword),
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
              height: 30,
            ),
            Center(
              child: AppGradientButton(
                width: 327,
                gradient: const LinearGradient(colors: [
                  Color(0xffF5A825),
                  Color(0xffF6CE50),
                ]),
                buttonText: 'Sign In',
                onPressed: () {},
                verticalPadding: 18,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                'or Login with',
                style: AppTextStyles.kFont12ptGrey,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: AppGradientButton(
                    onPressed: () {},
                    buttonText: 'Facebook',
                    backgroundColor: const Color(0xff4460A0),
                    verticalPadding: 16,
                    assetImage: 'assets/Facebook.png',
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: AppGradientButton(
                    onPressed: () {},
                    buttonText: 'Google',
                    verticalPadding: 16.0,
                    backgroundColor: const Color(0xffD9372B),
                    assetImage: AppAssets.googleIcon,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            AppGradientButton(
              onPressed: () {},
              buttonText: 'Sign in with Apple',
              backgroundColor: const Color(0xff000000),
              color: const Color(0xffFFFFFF),
              verticalPadding: 16,
              assetImage: 'assets/appleicon.png',
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: RichText(
                text: const TextSpan(
                  text: "Login with ",
                  style: TextStyle(
                    color: Color(0xff757576),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Touch ID',
                      style: TextStyle(
                        color: Color(0xff2C2A26),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
