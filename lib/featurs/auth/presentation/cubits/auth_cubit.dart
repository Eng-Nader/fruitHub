import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruithub/featurs/auth/data/models/user_model.dart';
import 'package:fruithub/featurs/auth/data/repos/auth_repo_implemtaion.dart';
import 'package:fruithub/featurs/auth/presentation/cubits/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepoImplemtaion) : super(AuthIntinalState());
  final AuthRepoImplemtaion authRepoImplemtaion;

  Future<void> createEmialAndPassword(
      String email, String password, String name) async {
    var userModel =
        await authRepoImplemtaion.createEmailAndPassword(password, email, name);
    userModel.fold((failure) {
      emit(AuthFailureState(failure));
    }, (succes) {
      emit(SignUpAuthState(succes as UserModel));
    });
  }
}
