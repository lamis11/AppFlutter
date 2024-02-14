import 'package:flutter/material.dart';

class SignInContent extends StatelessWidget {
  final String userEmail;

  SignInContent({required this.userEmail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, $userEmail!'),
      ),
      body: Center(
        child: Text('This is your signed-in content.'),
      ),
    );
  }
}
