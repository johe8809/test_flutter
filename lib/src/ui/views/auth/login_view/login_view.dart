library app.ui.views.auth;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_flutter_1/src/ui/models/models.dart';

class LoginView extends StatelessWidget {
  static final route = '/login';

  final AuthViewModel authViewModel = AuthViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        elevation: 0,
        leading: SizedBox(),
        title: null,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Iniciar sesión',
              style: TextStyle(fontSize: 28),
            ),
            SizedBox(height: 32),
            TextFormField(
              controller: authViewModel.emailController,
              decoration: InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              controller: authViewModel.passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 16),
            ButtonTheme(
              minWidth: MediaQuery.of(context).size.width,
              child: RaisedButton(
                padding: EdgeInsets.all(16),
                onPressed: () => authViewModel.signIn(
                  authViewModel.emailController.text,
                  authViewModel.passwordController.text,
                ),
                child: Text(
                  'Ingresar',
                  style: TextStyle(fontSize: 16),
                ),
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
