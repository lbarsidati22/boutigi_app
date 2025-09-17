import 'package:boutigi_app/core/services/data_base_services.dart';
import 'package:boutigi_app/core/services/fire_store_services.dart';
import 'package:boutigi_app/core/services/firebase_auth_services.dart';
import 'package:boutigi_app/features/auth/data/repos/auth_repo_imp.dart';
import 'package:boutigi_app/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<SupabaseAuthServices>(
    SupabaseAuthServices(),
  );
  getIt.registerSingleton<DataBaseServices>(
    SupabaseServices(),
  );
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImp(
      supabaseAuthServices:
          getIt<SupabaseAuthServices>(),
      dataBaseServices: getIt<DataBaseServices>(),
    ),
  );
}
