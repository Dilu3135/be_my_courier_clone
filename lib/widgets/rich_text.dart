import 'package:flutter/material.dart';

class AppRichText extends StatelessWidget {
  const AppRichText({
    Key? key,
    required this.leadingText,
    required this.trailingText,
    required this.leadingTextStyle,
    required this.trailingTextStyle,
  }) : super(key: key);

  final String leadingText;
  final String trailingText;
  final TextStyle leadingTextStyle;
  final TextStyle trailingTextStyle;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: leadingText,
        style: leadingTextStyle,
        children: <TextSpan>[
          TextSpan(
            text: trailingText,
            style: trailingTextStyle,
          ),
        ],
      ),
    );
  }
}
