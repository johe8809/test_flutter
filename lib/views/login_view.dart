import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  static final route = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Text('Login'),
      ),
    );
  }
}