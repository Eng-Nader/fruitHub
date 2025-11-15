import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/errors/custom_exception.dart';
import '../../../../core/errors/failure.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repos/auth_repos.dart';
import '../models/user_model.dart';
import '../services/firebase_auth_serves.dart';

class AuthRepoImplemtaion extends AuthRepos {
  final FirebaseAuthServes firebaseAuthServes;
  AuthRepoImplemtaion(this.firebaseAuthServes);
  @override
  Future<Either<Failure, UserEntity>> createEmailAndPassword(
      String password, String email, String name) async {
    try {
      var user = await firebaseAuthServes.createEmialAndPassword(
          email: email, password: password);
      return right(
        UserModel.fromFirebaseSevices(user),
      );
    } on CustomException catch (e) {
      // todo  in e object is all custom exception message
      log('this problem is find in AuthRepeImplemtation and is ${e.toString()}');

      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInEmialAndPassword(
      String email, String password) async {
    try {
      final user =
          await firebaseAuthServes.signInEmailAndPassword(email, password);
      return right(UserModel.fromFirebaseSevices(user));
    } on CustomException catch (e) {
      log('this problem is find in AuthRepeImplemtation and is ${e.toString()}');

      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithGoogle() async {
    try {
      final user = await firebaseAuthServes.signInWithGoogle();
      return right(
        UserModel.fromFirebaseSevices(user),
      );
    } on CustomException catch (e) {
      return left(
        ServerFailure(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signinWithFacebook() async {
    try {
      final user = await firebaseAuthServes.signInWithFacebook();
      return right(UserModel.fromFirebaseSevices(user));
    } on CustomException catch (e) {
      log(e.toString());

      return left(
        ServerFailure(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure , UserEntity>> singinWithApple() async {
    try {
      final user = await firebaseAuthServes.signInWithApple();
      return right(UserModel.fromFirebaseSevices(user));
    } on FirebaseAuthException catch (e) {
      log(e.toString());

      return left(
        ServerFailure('حدث خطا ما يرجي المحاوله لاحقا '),
      );
    }
  }
}
