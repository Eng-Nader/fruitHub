import 'dart:developer';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
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
      log('this problem is find in FirebaseAuthServerice and is ${e.toString()}');

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
      log('this problem is find in FirebaseAuthServerice and is ${e.toString()}');

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
      log('this problem is find in FirebaseAuthServerice and is ${e.toString()}');
      if (e.code == 'wrong-password') {
        throw CustomException(
            exceptionMessage: ' كلمه المرور خاطئه الرجاء المحاوله مره اخري ');
      } else if (e.code == 'user-not-found') {
        throw CustomException(
            exceptionMessage: 'المستحدم الذي تم تسجيه غير موجود ');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(
            exceptionMessage: 'الرجاء التحقق من الاتصال بالانترنت');
      } else if (e.code == 'invalid-email') {
        throw CustomException(
            exceptionMessage:
                'البريد الالكتروني غير صيحح الرجاء المحاوله مره اخري ');
      } else {
        throw CustomException(
            exceptionMessage: 'يوجد خطا ما يرجي المحاوله لاحقا ');
      }
    } catch (e) {
      log('this problem is find in FirebaseAuthServerice and is ${e.toString()}');

      throw CustomException(
          exceptionMessage: 'يوجد خطا ما يرجي المحاوله لاحقا ');
    }
  }

  Future<User> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    final userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);

    return userCredential.user!;
  }

  Future<User> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();

    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

    final facebookCreadintl = await FirebaseAuth.instance
        .signInWithCredential(facebookAuthCredential);
    return facebookCreadintl.user!;
  }
}
