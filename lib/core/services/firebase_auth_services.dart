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

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
            email: email,
            password: password,
          );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        'exception in firebaseServicesAuth.signInWithEmailAndPassword ${e.toString()}',
      );

      if (e.code == 'user-not-found') {
        throw CustomExeption('لا يوجد مستخدم بهذا البريد الالكتروني');
      } else if (e.code == 'wrong-password') {
        throw CustomExeption(
          'كلمة المرور أو البريد الالكتروني غير صحيح',
        );
      } else if (e.code == 'network-request-failed') {
        throw CustomExeption('تأكد من الاتصال بالانترنت');
      } else {
        throw CustomExeption(
          'تحقق من البريد الالكتروني و كلمة المرور',
        );
      }
    } catch (e) {
      log(
        'exception in firebaseServicesAuth.signInWithEmailAndPassword ${e.toString()}',
      );
      throw CustomExeption('هناك خطاء ما يرجى المحاولة لاحقا');
    }
  }
}
