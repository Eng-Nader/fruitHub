import '../../../featurs/auth/data/repos/auth_repo_implemtaion.dart';
import '../../../featurs/auth/data/services/firebase_auth_serves.dart';
import 'package:get_it/get_it.dart';


  final getit = GetIt.instance;
  void configrationInjection() {
    getit.registerSingleton<FirebaseAuthServes>(
      FirebaseAuthServes(),
    );
    getit.registerSingleton<AuthRepoImplemtaion>(
      (AuthRepoImplemtaion(
        getit<FirebaseAuthServes>(),
      )),
    );
  }

