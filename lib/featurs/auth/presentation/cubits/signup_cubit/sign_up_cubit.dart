import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruithub/featurs/auth/data/repos/auth_repo_implemtaion.dart';
import 'package:fruithub/featurs/auth/presentation/cubits/signup_cubit/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepoImplemtaion) : super(SignUPIntinalState());
  final AuthRepoImplemtaion authRepoImplemtaion;

  Future<void> createWithEmialAndPassword(
      String email, String password, String name) async {
    emit(SignUPLoadingState());
    var result =
        await authRepoImplemtaion.createEmailAndPassword(password, email, name);
    result.fold((failure) {
      emit(SignUPFailureState(failure.message));
    }, (succes) {
      emit(SignUPSucessState(succes));
    });
  }
}
