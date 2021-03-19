import 'package:get_it/get_it.dart';
import 'package:test_flutter_1/src/core/services/services.dart';
import 'package:test_flutter_1/src/ui/models/models.dart';

GetIt locator = GetIt.instance;

void init() {
  locator

    /// [singleton-locator]
    ..registerLazySingleton(() => NavigatorService())
    ..registerLazySingleton(() => FirebaseService())
    ..registerLazySingleton(() => AuthService())

    /// [factory-locator]
    ..registerFactory(() => AuthViewModel());
}
