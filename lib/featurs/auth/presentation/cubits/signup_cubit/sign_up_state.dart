import '../../../domain/entities/user_entity.dart';

abstract class SignUpState {}

class SignUPIntinalState extends SignUpState {}

class SignUPLoadingState extends SignUpState {}

class SignUPSucessState extends SignUpState {
  final UserEntity userEntity;
  SignUPSucessState(this.userEntity);
}

class SignUPFailureState extends SignUpState {
  final String errorMessage;
  SignUPFailureState(this.errorMessage);
}
