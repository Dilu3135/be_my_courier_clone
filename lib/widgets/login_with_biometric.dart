import 'package:be_my_courier/widgets/rich_text.dart';
import 'package:flutter/material.dart';

import '../core/utils/app_assets.dart';

class LoginWithBiometric extends StatelessWidget {
  const LoginWithBiometric({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          AppAssets.fingerPrintIcon,
        ),
        const SizedBox(
          width: 10,
        ),
        const AppRichText(
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
        ),
      ],
    );
  }
}