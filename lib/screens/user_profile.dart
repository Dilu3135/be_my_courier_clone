import 'dart:math';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  late User _user;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _getUserData();
  }

  Future<void> _getUserData() async {
    try {
      String uid = FirebaseAuth.instance.currentUser!.uid;
      DocumentSnapshot snapshot =
          await FirebaseFirestore.instance.collection('users').doc(uid).get();
      if (snapshot.exists) {
        setState(() {
          _user = User.fromSnapshot(snapshot);
          _isLoading = false;
        });
      }
    } catch (e) {
      // handle error
      // log(e.toString());

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name: ${_user.name}'),
                Text('Email: ${_user.email}'),
                Text('Address: ${_user.address}'),
                Text('City: ${_user.city}'),
                Text('State: ${_user.state}'),
                Text('Country: ${_user.country}'),
                Text('Zip: ${_user.zip}'),
              ],
            ),
    );
  }
}

class User {
  final String name;
  final String email;
  final String address;
  final String city;
  final String state;
  final String country;
  final String zip;

  User({
    required this.name,
    required this.email,
    required this.address,
    required this.city,
    required this.state,
    required this.country,
    required this.zip,
  });

  factory User.fromSnapshot(DocumentSnapshot snapshot) {
    return User(
      name: snapshot['name'],
      email: snapshot['email'],
      address: snapshot['address'],
      city: snapshot['city'],
      state: snapshot['state'],
      country: snapshot['country'],
      zip: snapshot['zip'],
    );
  }
}
