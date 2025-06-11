import 'dart:developer';

import 'package:boutigi_app/core/errors/exception.dart';
import 'package:boutigi_app/core/errors/fauliers.dart';
import 'package:boutigi_app/core/services/firebase_auth_services.dart';
import 'package:boutigi_app/features/auth/data/models/user_model.dart';
import 'package:boutigi_app/features/auth/domain/entites/user_entity.dart';
import 'package:boutigi_app/features/auth/domain/repos/auth_repo.dart';
import 'package:dartz/dartz.dart';

class AuthRepoImp extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;

  AuthRepoImp({required this.firebaseAuthServices});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPaasword(
    String email,
    String password,
    String name,
  ) async {
    try {
      var user = await firebaseAuthServices
          .registerWithEmailAndPassword(
            email: email,
            password: password,
          );
      return right(UserModel.fromFirebaseUser(user));
    } on CustomExeption catch (e) {
      log(
        'exception in authrepoimpl.createUserWithEmailAndPaasword ${e.toString()}',
      );
      return left(ServerFaulier(e.toString()));
    } catch (e) {
      log(
        'exception in authrepoimpl.createUserWithEmailAndPaasword ${e.toString()}',
      );
      return left(ServerFaulier(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      var user = await firebaseAuthServices
          .signInWithEmailAndPassword(
            email: email,
            password: password,
          );
      return right(UserModel.fromFirebaseUser(user));
    } on CustomExeption catch (e) {
      return left(ServerFaulier(e.toString()));
    } catch (e) {
      log(
        'exception in authrepoimpl.createUserWithEmailAndPaasword ${e.toString()}',
      );
      return left(ServerFaulier(e.toString()));
    }
  }
}
