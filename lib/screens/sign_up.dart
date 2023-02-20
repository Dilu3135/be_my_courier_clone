import 'package:be_my_courier/core/utils/app_colors.dart';
import 'package:be_my_courier/screens/user_address_screen.dart';
import 'package:be_my_courier/core/utils/app_assets.dart';
import 'package:be_my_courier/core/utils/app_text_styles.dart';
import 'package:be_my_courier/widgets/app_gradient_button.dart';
import 'package:be_my_courier/widgets/app_text_field.dart';
import 'package:be_my_courier/widgets/verify_phone_number_screen.dart';

import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';
import '../widgets/login_with_biometric.dart';
import '../widgets/social_login.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const String route = '/signup';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final TextEditingController confirmPasswordController;
  // ===========================================================================
  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

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
      // =======================================================================
      // Body
      // =======================================================================
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
                    const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Color(0xffF5A825),
                        fontSize: 29,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    // const AccountComfirmation(),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Name',
                      style: AppTextStyles.normalTextTitle,
                    ),
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
                    Text(
                      'Email Address',
                      style: AppTextStyles.normalTextTitle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AppTextField(
                        hinttext: 'Email',
                        isPasword: false,
                        textEditingController: emailController,
                        keyboardType: TextInputType.emailAddress),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Password',
                      style: AppTextStyles.normalTextTitle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AppTextField(
                        hinttext: 'Password',
                        isPasword: true,
                        textEditingController: passwordController,
                        keyboardType: TextInputType.visiblePassword),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Confirm Password',
                      style: AppTextStyles.normalTextTitle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AppTextField(
                        hinttext: 'Password',
                        isPasword: true,
                        textEditingController: confirmPasswordController,
                        keyboardType: TextInputType.visiblePassword),
                    const SizedBox(
                      height: 10,
                    ),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: (context) => VerifyPhoneNumberScreen()))
                    //   },
                    //   // Navigator.pushNamed(context, MaterialPageRoute(builder: (context) => VerifyPhoneNumberScreen())),
                    // child: Text("Generate OTP"),
                  

                AppTextField(
                    hinttext: 'Password',
                    isPasword: true,
                    textEditingController: confirmPasswordController,
                    keyboardType: TextInputType.visiblePassword),
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
                    onPressed: () {
                      Map<String, dynamic> data = {
                        'Email': emailController.text,
                        'Password': passwordController.text,
                        'Confirm': confirmPasswordController.text,
                      };
                      Navigator.pushNamed(context, UserAddressScreen.route,
                          arguments: data);
                    },
                    gradient: AppColors.appGradient,
                    leadingTextStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    leadingtext: 'NEXT',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Center(
                  child: Text(
                    'or Sign up with',
                    style: AppTextStyles.kFont12ptGrey,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                const SocialLoginColumn(),
                const Center(
                  child: LoginWithBiometric(),
                ),
              ]))
      ) ],
                ),
      
      );
   
  }
}
