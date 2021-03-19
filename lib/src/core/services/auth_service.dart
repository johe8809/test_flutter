part of app.services;

class AuthService extends FirebaseService {
  Future<UserCredential> signIn(String email, String password) async {
    try {
      UserCredential response = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return response;
    } on Exception catch (e) {
      print('Error $e');
      throw e;
    }
  }
}
