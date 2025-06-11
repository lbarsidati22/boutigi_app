import 'package:boutigi_app/core/services/data_base_services.dart';
import 'package:boutigi_app/core/services/fire_store_services.dart';
import 'package:boutigi_app/core/services/firebase_auth_services.dart';
import 'package:boutigi_app/features/auth/data/repos/auth_repo_imp.dart';
import 'package:boutigi_app/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<FirebaseAuthServices>(
    FirebaseAuthServices(),
  );
  getIt.registerSingleton<DataBaseServices>(FireStoreServices());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImp(
      firebaseAuthServices: getIt<FirebaseAuthServices>(),
      dataBaseServices: getIt<DataBaseServices>(),
    ),
  );
}
