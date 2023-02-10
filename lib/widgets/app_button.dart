import 'package:flutter/material.dart';

class AppGradientButton extends StatelessWidget {
  const AppGradientButton({
    Key? key,
    this.gradient,
    required this.buttonText,
    required this.onPressed,
    this.backgroundColor,
    this.width = double.infinity,
    this.verticalPadding = 4.0,
    this.assetImage,
    this.color,
    required this.leadingTextStyle,
  }) : super(key: key);

  final LinearGradient? gradient;
  final String buttonText;
  final Function() onPressed;
  final Color? backgroundColor;
  final double width;
  final double verticalPadding;
  final String? assetImage;
  final Color? color;
  final TextStyle leadingTextStyle;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: width,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: verticalPadding),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (assetImage != null) Image.asset(assetImage!),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  buttonText,
                  style: leadingTextStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
