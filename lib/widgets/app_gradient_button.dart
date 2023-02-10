import 'package:flutter/material.dart';

class AppGradientButton extends StatelessWidget {
  const AppGradientButton(
      {super.key,
      required this.gradient,
      required this.leadingtext,
      required this.leadingTextStyle,
      this.onPressed});

  final LinearGradient gradient;
  final String leadingtext;
  final TextStyle leadingTextStyle;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: double.infinity,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: gradient,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black45.withOpacity(0.2),
                offset: const Offset(0, 2),
                spreadRadius: 0.8,
                blurRadius: 2,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Center(
              child: Text(
                leadingtext,
                style: leadingTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
