import 'package:flutter/material.dart';

import 'views/home_view.dart';
import 'views/login_view.dart';

class UIRouter {
  static generateRoute(RouteSettings settings) {
    final routes = {
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
