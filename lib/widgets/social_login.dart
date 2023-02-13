import 'package:be_my_courier/widgets/app_button.dart';
import 'package:flutter/material.dart';

import '../core/utils/app_assets.dart';
import '../core/utils/app_colors.dart';

class SocialLoginColumn extends StatelessWidget {
  const SocialLoginColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: AppSimpleButton(
                onPressed: () {},
                buttonText: 'Facebook',
                backgroundColor: AppColors.kblueFacebook,
                verticalPadding: 15,
                assetImage: AppAssets.facebooklIcon,
                leadingTextStyle: const TextStyle(color: Colors.white),
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
      ],
    );
  }
}
