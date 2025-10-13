import 'package:dartz/dartz.dart';
import 'package:fruithub/core/errors/failure.dart';
import 'package:fruithub/featurs/auth/domain/entities/user_entity.dart';

abstract class AuthRepos {
  Future<Either<Failure, UserEntity>> createEmailAndPassword(
      String password, String email, String name);

  Future<Either<Failure, UserEntity>> signInEmialAndPassword(
    String email,
    String password,
  );
}
