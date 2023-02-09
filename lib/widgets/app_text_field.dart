import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    required this.hinttext,
    this.title,
    required this.isPasword,
    required this.keyboardType,
  }) : super(key: key);

  final String hinttext;
  final String? title;
  final bool isPasword;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title != null
            ? Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  title!,
                ),
              )
            : const SizedBox.shrink(),
        TextField(
          obscureText: isPasword,
          keyboardType: keyboardType,
          style: const TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xffE7EBED),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 6,
            ),
            hintText: hinttext,
            hintStyle: const TextStyle(color: Colors.black38),
          ),
        ),
      ],
    );
  }
}
