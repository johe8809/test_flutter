import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'src/app.dart';
import 'src/core/locator.dart' as locator;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  locator.init();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(TestFlutterApp());
}
