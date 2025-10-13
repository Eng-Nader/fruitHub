import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruithub/core/errors/failure.dart';
import 'package:fruithub/featurs/auth/data/repos/auth_repo_implemtaion.dart';
import 'package:fruithub/featurs/auth/domain/repos/auth_repos.dart';
import 'package:fruithub/featurs/auth/presentation/cubits/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepoImplemtaion) : super(AuthIntinalState());
  final AuthRepos authRepoImplemtaion;

  Future<void> createEmialAndPassword(
      String email, String password, String name) async {
    emit(AuthLoadingState());
    var userModel =
        await authRepoImplemtaion.createEmailAndPassword(password, email, name);
    userModel.fold((failure) {
      emit(AuthFailureState(failure.message));
    }, (succes) {
      emit(
        SignUpAuthState(succes),
      );
    });
  }

  Future<void> signInEmailAndPassword(String email, String password) async {
    emit(AuthLoadingState());
    var userModel =
        await authRepoImplemtaion.signInEmialAndPassword(email, password);
    userModel.fold((failur) {
      emit(AuthFailureState(failur.message));
    }, (sucess) {
      emit(SignInAuthState(sucess));
    });
  }
}
