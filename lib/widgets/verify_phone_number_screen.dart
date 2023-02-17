import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class VerifyPhoneNumberScreen extends StatefulWidget {
  const VerifyPhoneNumberScreen({super.key});
  @override
  State<VerifyPhoneNumberScreen> createState() =>
      _VerifyPhoneNumberScreenState();
}

class _VerifyPhoneNumberScreenState extends State<VerifyPhoneNumberScreen> {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  String? verificationId;
  String authStatus = "";

  Future<bool> verifyPhoneNumber({required String phoneNumber}) async {
    try {
      bool numberVerified = false;
      await firebaseAuth.verifyPhoneNumber(
          phoneNumber: phoneNumber,
          timeout: const Duration(seconds: 30),
          verificationCompleted: (AuthCredential authCredential) {
            setState(() {
              authStatus = "Your account is successfully verified";
            });
            numberVerified = true;
          },
          verificationFailed: (FirebaseAuthException authException) {
            setState(() {
              authStatus = " Authentication Failed";
            });
            numberVerified = false;
          },
          codeSent: (String verId, int? forceCodeResend) {
            verificationId = verId;
            setState(() {
              authStatus = "OTP has been successfully send";
            });
            numberVerified = false;
          },
          codeAutoRetrievalTimeout: (String verId) {
            verificationId = verId;
            setState(() {
              authStatus = "Time out";
            });
            numberVerified = false;
          });
      return numberVerified;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Phone Number'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Phone Number',
              ),
              onChanged: (value) {
                setState(() {
                  verificationId = value;
                });
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                bool verified = await verifyPhoneNumber(phoneNumber: '');
                if (verified) {
                  setState(() {
                    authStatus = 'Phone number verified successfully';
                  });
                } else {
                  setState(() {
                    authStatus = 'Failed to verify phone number';
                  });
                }
              },
              child: const Text('Verify Phone Number'),
            ),
            const SizedBox(height: 16),
            Text(authStatus),
          ],
        ),
      ),
    );
  }
}
