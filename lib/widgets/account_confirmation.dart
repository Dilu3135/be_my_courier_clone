import 'package:be_my_courier/screens/sign_up.dart';
import 'package:be_my_courier/widgets/rich_text.dart';
import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';

class AccountComfirmation extends StatelessWidget {
  const AccountComfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return AppRichText(
      leadingText: "Don't have an account? ",
      trailingText: 'Sign IN',
      onTap: () {
        Navigator.pushNamed(context, SignUpScreen.route);
      },
      leadingTextStyle: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: 12,
      ),
      trailingTextStyle: const TextStyle(
        color: AppColors.kRedColor,
        fontWeight: FontWeight.w400,
        fontSize: 12,
      ),
    );
  }
}
