import 'package:auvnet_internship_task/core/services/supabase_auth_service.dart';
import 'package:auvnet_internship_task/core/services/supabase_database_service.dart';
import 'package:auvnet_internship_task/features/auth/data/repos/auth_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<SupabaseAuthService>(SupabaseAuthService());
  getIt.registerSingleton<SupabaseDatabaseService>(SupabaseDatabaseService());

  getIt.registerSingleton<AuthRepoImpl>(
    AuthRepoImpl(
      supabaseAuthService: getIt.get<SupabaseAuthService>(),
      supabaseDatabaseService: getIt.get<SupabaseDatabaseService>(),
    ),
  );
}
