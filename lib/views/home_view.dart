import 'package:flutter/material.dart';
import 'package:test_flutter_1/views/login_view.dart';

class HomeView extends StatelessWidget {
  static final String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
          child: RaisedButton(
        onPressed: () => Navigator.pushNamed(context, LoginView.route),
        child: Text('Home'),
      )),
    );
  }
}
