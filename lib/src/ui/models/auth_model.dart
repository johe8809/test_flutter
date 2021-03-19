part of app.ui.models;

class AuthViewModel {
  AuthService authService = locator<AuthService>();
  NavigatorService navigatorService = locator<NavigatorService>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> signIn(String email, String password) async {
    try {
      UserCredential response = await authService.signIn(email, password);
      User user = response.user;
      models.User.fromJson({'email': user.email});
      navigatorService.replace(HomeView.route);
    } catch (e) {}
  }
}
