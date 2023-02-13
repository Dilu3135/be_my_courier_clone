import 'package:be_my_courier/screens/sign_in.dart';
import 'package:be_my_courier/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String route = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // ===========================================================================
  // Init State
  // ===========================================================================
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      // Navigator.pushAndRemoveUntil(
      //     context,
      //     MaterialPageRoute(builder: (context) => const SignInScreen()),
      //     (route) => false);
      Navigator.pushNamedAndRemoveUntil(
        context,
        SignInScreen.route,
        (route) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.splashScreenImage,
      fit: BoxFit.cover,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
    );
  }
}
