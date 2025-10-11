import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruithub/core/errors/custom_exception.dart';
import 'package:fruithub/core/errors/failure.dart';
import 'package:fruithub/featurs/auth/data/models/user_model.dart';
import 'package:fruithub/featurs/auth/data/services/firebase_auth_serves.dart';
import 'package:fruithub/featurs/auth/domain/entities/user_entity.dart';
import 'package:fruithub/featurs/auth/domain/repos/auth_repos.dart';

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
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
