import 'dart:developer';

import 'package:boutigi_app/core/errors/exception.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthServices {
  Future<User> registerWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: email,
            password: password,
          );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        'exception in firebaseServicesAuth.createUserWithEmailAndPassword ${e.toString()}',
      );
      if (e.code == 'weak-password') {
        throw CustomExeption('كلمة المرور ضعيفة');
      } else if (e.code == 'email-already-in-use') {
        throw CustomExeption(
          'البريد الالكتروني مستخدم بالفعل الرجاء استخدام بريد اخر',
        );
      } else if (e.code == 'network-request-failed') {
        throw CustomExeption('تأكد من الاتصال بالانترنت');
      } else {
        throw CustomExeption('هناك خطأ ما يرجى المحاولة لاحقا');
      }
    } catch (e) {
      log(
        'exception in firebaseServicesAuth.createUserWithEmailAndPassword ${e.toString()}',
      );
      throw CustomExeption('هناك خطأ ما يرجى المحاولة لاحقا');
    }
  }
}
