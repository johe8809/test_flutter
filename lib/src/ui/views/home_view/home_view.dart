import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  static final String route = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home 2'),
        leading: SizedBox(),
      ),
      body: Center(
          child: RaisedButton(
        onPressed: () {},
        child: Text('Logout'),
      )),
    );
  }
}
