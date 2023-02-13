import 'package:be_my_courier/widgets/rich_text.dart';
import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';

class AccountComfirmation extends StatelessWidget {
  const AccountComfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppRichText(
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
    );
  }
}
