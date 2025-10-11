import 'package:fruithub/core/errors/failure.dart';
import 'package:fruithub/featurs/auth/data/models/user_model.dart';

abstract class AuthState {}


class AuthIntinalState extends AuthState { }
class SignUpAuthState extends AuthState{ 
  final UserModel userModel ; 
  SignUpAuthState(this.userModel); 
}
class AuthFailureState extends AuthState{ 
   final Failure failure; 
  AuthFailureState(this.failure); 
}
