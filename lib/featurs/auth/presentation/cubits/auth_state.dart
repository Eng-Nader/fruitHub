import '../../../../core/errors/failure.dart';
import '../../data/models/user_model.dart';
import '../../domain/entities/user_entity.dart';

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


class SignInAuthState extends AuthState{ 
  final UserEntity userEntity ; 
  SignInAuthState(this.userEntity); 
}
