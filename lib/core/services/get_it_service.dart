import 'package:get_it/get_it.dart';
import 'package:movies_app/core/services/database_service.dart';
import 'package:movies_app/core/services/firebase_service.dart';
import 'package:movies_app/core/services/tmdb_service.dart';

final getIt = GetIt.instance;

Future getItSetup() async {
  getIt.registerSingleton<FirebaseService>(FirebaseService());
  getIt.registerSingleton<DatabaseService>(TMDB());
}
