import 'package:flutter/material.dart';

import 'rich_text.dart';

class AuthenticationAppBar extends StatelessWidget {
  const AuthenticationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
        ),
      ),
    );
  }
}
