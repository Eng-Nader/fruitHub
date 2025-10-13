import 'package:fruithub/core/errors/failure.dart';
import 'package:fruithub/featurs/auth/data/models/user_model.dart';
import 'package:fruithub/featurs/auth/domain/entities/user_entity.dart';

abstract class AuthState {}


class AuthIntinalState extends AuthState { }
class AuthLoadingState extends AuthState{}
class SignUpAuthState extends AuthState{ 
  final UserEntity userEntity ; 
  SignUpAuthState(this.userEntity); 
}
class AuthFailureState extends AuthState{ 
   final String errorMessage; 
  AuthFailureState(this.errorMessage); 
}
