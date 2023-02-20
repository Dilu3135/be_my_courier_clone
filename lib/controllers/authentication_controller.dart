import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final CollectionReference emailsCollection =
      FirebaseFirestore.instance.collection('emails');
  static User? user;
  String? verificationId;
  String authStatus = "";

  Future<bool> loginUser({
    required String email,
    required String password,
  }) async {
    try {
      await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((auth) {
        user = auth.user;
      });
      if (user != null) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<bool> signupUser(
      {required String email,
      required String password,
      required name,
      required}) async {
    try {
      await firebaseAuth
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((auth) {
        user = auth.user;
      });
      if (user != null) {
        // addUser(email, name, user!.uid);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<bool> createUser(
      {required String email,
      required String password,
      required name,
      required address,
      required state,
      required country,
      required zip,
      required city,
      required}) async {
    try {
      await firebaseAuth
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((auth) {
        user = auth.user;
      });
      if (user != null) {
        addUser(email, name, user!.uid, address, state, zip, city, country);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  Future<bool> verifyPhoneNumber({required String phoneNumber}) async {
    try {
      bool numberVerified = false;
      await firebaseAuth.verifyPhoneNumber(
          phoneNumber: phoneNumber,
          timeout: const Duration(seconds: 30),
          verificationCompleted: (AuthCredential authCredential) {
            authStatus = "Your account is successfully verified";
            numberVerified = true;
          },
          verificationFailed: (FirebaseAuthException authException) {
            authStatus = " Authentication Failed";
            numberVerified = false;
          },
          codeSent: (String verId, int? forceCodeResend) {
            verificationId = verId;
            authStatus = "OTP has been successfully send";
            numberVerified = false;
          },
          codeAutoRetrievalTimeout: (String verId) {
            verificationId = verId;
            authStatus = "Time out";
            numberVerified = false;
          });
      return numberVerified;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  void addUser(
    String email,
    String name,
    String userId,
    String address,
    String state,
    String zip,
    String city,
    String country,
  ) async {
    await FirebaseFirestore.instance.collection('users').doc(userId).set({
      'email': email,
      'name': name,
      'address': address,
      'zip': zip,
      'state': state,
      'country': country,
      'city': city,
    });
  }

  Future<bool> userAddress(
      {required String email, required String password, required name}) async {
    try {
      await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((auth) {
        user = auth.user;
      });
      if (user != null) {
        // addUser(email, name, user!.uid);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      log(e.toString());
      return false;
    }
  }
}
