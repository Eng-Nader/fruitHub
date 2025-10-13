import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import '../../../../core/errors/custom_exception.dart';

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
        throw CustomException(exceptionMessage: 'كلمه المرور ضعيفه');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(exceptionMessage: 'هذا الحساب مستخدم بالفعل');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(
            exceptionMessage: 'الرجاء التحقق من الاتصال بالانترنت');
      } else {
        throw CustomException(
            exceptionMessage: 'يوجد خطا ما الرجاء المحاوله مره اخره لاحقا  !');
      }
    } catch (e) {
      throw CustomException(
          exceptionMessage: 'يوجد خطا ما الرجاء المحاوله مره اخره لاحقا  !');
    }
  }

  Future<User> signInEmailAndPassword(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw CustomException(
            exceptionMessage: 'المستحدم الذي تم تسجيه غير موجود ');
      } else if (e.code == 'wrong-password') {
        throw CustomException(exceptionMessage: 'كلمه المرور خاطئه');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(
            exceptionMessage: 'الرجاء التحقق من الاتصال بالانترنت');
      } else {
        throw CustomException(
            exceptionMessage: 'يوجد خطا ما يرجي المحاوله لاحقا ');
      }
    } catch (e) {
      throw CustomException(
          exceptionMessage: 'يوجد خطا ما يرجي المحاوله لاحقا ');
    }
  }
}
