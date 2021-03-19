part of app.services;

class NavigatorService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  void push(String routeName, {dynamic params}) {
    navigatorKey.currentState.pushNamed(
      routeName,
      arguments: params,
    );
  }

  void replace(String routeName, {dynamic params}) {
    navigatorKey.currentState.pushReplacementNamed(
      routeName,
      arguments: params,
    );
  }
}
