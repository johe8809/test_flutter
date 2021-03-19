part of app.services;

class FirebaseService {
  static final Future<FirebaseApp> initializationFirebase =
      Firebase.initializeApp();

  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore database = FirebaseFirestore.instance;
}
