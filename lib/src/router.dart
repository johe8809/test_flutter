import 'package:flutter/material.dart';

import 'ui/views/home_view/home_view.dart';
import 'ui/views/auth/login_view/login_view.dart';
import 'ui/views/root_view.dart';

class UIRouter {
  static generateRoute(RouteSettings settings) {
    final routes = {
      RootView.route: MaterialPageRoute<dynamic>(
        settings: RouteSettings(name: RootView.route),
        builder: (_) => RootView(),
      ),
      HomeView.route: MaterialPageRoute(
        settings: RouteSettings(name: HomeView.route),
        builder: (_) => HomeView(),
      ),
      LoginView.route: MaterialPageRoute(
        settings: RouteSettings(name: LoginView.route),
        builder: (_) => LoginView(),
      )
    };

    return routes[settings.name];
  }
}
