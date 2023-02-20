import 'package:flutter/material.dart';

class SignUpArguments {
  final String email;
  final String password;
  final String name;

  SignUpArguments(
      {required this.email, required this.password, required this.name});
}
