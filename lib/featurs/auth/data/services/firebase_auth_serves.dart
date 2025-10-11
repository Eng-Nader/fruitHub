import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruithub/core/errors/custom_exception.dart';

class FirebaseAuthServes {
  Future<User> createEmialAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomException(
            exceptionMessage: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
            exceptionMessage: 'The account already exists for that email.');
      } else {
        throw CustomException(
            exceptionMessage: 'There Are An Error, please try Again later !');
      }
    } catch (e) {
      throw CustomException(
          exceptionMessage: 'There Are An Error, please try Again later !');
    }
  }
}
