import 'package:be_my_courier/utils/app_assets.dart';
import 'package:be_my_courier/utils/app_text_styles.dart';
import 'package:be_my_courier/widgets/app_button.dart';
import 'package:be_my_courier/widgets/app_text_field.dart';
import 'package:be_my_courier/widgets/rich_text.dart';
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
              ))),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppTextStyles.kFont12ptAmber,
            const SizedBox(
              height: 5,
            ),
            const AppRichText(
              leadingText: "Don't have an account? ",
              trailingText: 'Sign up',
              leadingTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
              trailingTextStyle: TextStyle(
                color: Color(0xffDE0A06),
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 40,
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
                // width: 327,
                gradient: const LinearGradient(colors: [
                  Color(0xffF5A825),
                  Color(0xffF6CE50),
                ]),
                buttonText: 'Sign In',
                onPressed: () {},
                verticalPadding: 18,
                leadingTextStyle: const TextStyle(color: Colors.black),
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
                    assetImage: AppAssets.facebooklIcon,
                    leadingTextStyle: const TextStyle(color: Color(0xffFFFFFF)),
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
                    assetImage: AppAssets.gmailIcon,
                    leadingTextStyle: const TextStyle(
                      color: Color(0xfffFFFFF),
                    ),
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
              assetImage: AppAssets.appleIcon,
              leadingTextStyle: const TextStyle(color: Color(0xffFFFFFF)),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              
                child: AppRichText(
              
              leadingText: "Login with ",
              trailingText: 'Touch ID',
              
              leadingTextStyle: TextStyle(
                color: Color(0xff757576),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              trailingTextStyle: TextStyle(
                color: Color(0xff2C2A26),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
