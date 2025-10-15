import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repos/auth_repo_implemtaion.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepoImplemtaion)
      : super(
            LoginIntinalState()); //todo when you open a page in cubit the state is intinal
  final AuthRepoImplemtaion authRepoImplemtaion;

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    emit(LoginLoadingState());
    var results =
        await authRepoImplemtaion.signInEmialAndPassword(email, password);
    results.fold((failure) {
      emit(LoginFailureState(failure.message));
    }, (succes) {
      emit(LoginSucessState(succes));
    });
  }

  Future<void> loginWithGoogle() async {
    emit(LoginLoadingState());
    var results = await authRepoImplemtaion.signinWithGoogle();
    results.fold((failure) {
      emit(LoginFailureState(failure.message));
    }, (succes) {
      emit(LoginSucessState(succes));
    });
  }
}
