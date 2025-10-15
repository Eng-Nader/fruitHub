import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../entities/user_entity.dart';

abstract class AuthRepos {
  Future<Either<Failure, UserEntity>> createEmailAndPassword(
      String password, String email, String name);

  Future<Either<Failure, UserEntity>> signInEmialAndPassword(
    String email,
    String password,
  );

  Future<Either<Failure, UserEntity>> signinWithGoogle();
}
