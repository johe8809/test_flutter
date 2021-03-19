import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'core/locator.dart';
import 'core/services/services.dart';
import 'router.dart';
import 'ui/views/root_view.dart';

class TestFlutterApp extends StatelessWidget {
  final NavigatorService navigator = locator<NavigatorService>();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FirebaseService.initializationFirebase,
      builder: (BuildContext context, AsyncSnapshot<FirebaseApp> snapshot) {
        if (snapshot.hasError) {
          print(snapshot.error);
          return SizedBox();
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            title: 'Test Flutter 1',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            navigatorKey: navigator.navigatorKey,
            initialRoute: RootView.route,
            onGenerateRoute: (RouteSettings settings) =>
                UIRouter.generateRoute(settings),
          );
        }

        return SizedBox();
      },
    );
  }
}
