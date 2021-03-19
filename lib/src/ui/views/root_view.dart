import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:test_flutter_1/src/core/locator.dart';
import 'package:test_flutter_1/src/core/models/user_model/user_model.dart';
import 'package:test_flutter_1/src/core/services/services.dart';
import 'package:test_flutter_1/src/ui/views/auth/login_view/login_view.dart';
import 'package:test_flutter_1/src/ui/views/home_view/home_view.dart';

class RootView extends StatefulWidget {
  static String route = '/';

  @override
  _RootViewState createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  NavigatorService navigatorService = locator<NavigatorService>();
  User user = User();

  @override
  void initState() {
    super.initState();
    print('user ${user.token}');
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (user.token != null) {
        navigatorService.replace(HomeView.route);
      } else {
        navigatorService.replace(LoginView.route);
      }
    });
  }

  @override
  Widget build(BuildContext context) => Container();
}
