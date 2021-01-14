import 'package:flutter/material.dart';
import 'package:test_flutter_1/router.dart';
import 'package:test_flutter_1/views/home_view.dart';

class TestFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Flutter 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeView.route,
      onGenerateRoute: (RouteSettings settings) =>
          UIRouter.generateRoute(settings),
    );
  }
}
