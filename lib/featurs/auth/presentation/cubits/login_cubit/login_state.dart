import 'package:fruithub/featurs/auth/domain/entities/user_entity.dart';

abstract class LoginState {}

class LoginIntinalState extends LoginState {}

class LoginLoadingState extends LoginState {}

class LoginSucessState extends LoginState {
  final UserEntity userEntity;
  LoginSucessState(this.userEntity);
}

class LoginFailureState extends LoginState {
  final String errorMessage;
  LoginFailureState(this.errorMessage);
}
