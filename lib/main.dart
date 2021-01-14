import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initializationFirebase = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializationFirebase,
      builder: (BuildContext context, AsyncSnapshot<FirebaseApp> snapshot) {
        if (snapshot.hasError) {
          log(snapshot.error);
          return SizedBox();
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return TestFlutterApp();
        }

        return SizedBox();
      },
    );
  }
}
