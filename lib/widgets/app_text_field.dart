import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    Key? key,
    required this.hinttext,
    this.title,
    this.isPasword = false,
    required this.keyboardType,
  }) : super(key: key);

  final String hinttext;
  final String? title;
  final bool isPasword;
  final TextInputType keyboardType;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool obscureText = true;
  toggleShowPassword() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.title != null
            ? Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  widget.title!,
                ),
              )
            : const SizedBox.shrink(),
        TextField(
          obscureText: widget.isPasword ? obscureText : false,
          keyboardType: widget.keyboardType,
          style: const TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xffE7EBED),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(25.0),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            hintText: widget.hinttext,
            hintStyle: const TextStyle(color: Colors.black38),
            suffixIcon: widget.isPasword
                ? IconButton(
                    onPressed: toggleShowPassword,
                    icon: const Icon(Icons.visibility),
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
