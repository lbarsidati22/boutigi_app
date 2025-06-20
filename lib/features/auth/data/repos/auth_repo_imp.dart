import 'dart:convert';
import 'dart:developer';

import 'package:boutigi_app/constants.dart';
import 'package:boutigi_app/core/errors/exception.dart';
import 'package:boutigi_app/core/errors/fauliers.dart';
import 'package:boutigi_app/core/services/data_base_services.dart';
import 'package:boutigi_app/core/services/firebase_auth_services.dart';
import 'package:boutigi_app/core/services/shared_pfer_singilton.dart';
import 'package:boutigi_app/core/utils/back_end_endpoints.dart';
import 'package:boutigi_app/features/auth/data/models/user_model.dart';
import 'package:boutigi_app/features/auth/domain/entites/user_entity.dart';
import 'package:boutigi_app/features/auth/domain/repos/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImp extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;
  final DataBaseServices dataBaseServices;
  AuthRepoImp({
    required this.firebaseAuthServices,
    required this.dataBaseServices,
  });
  @override
  Future<Either<Failure, UserEntity>>
  createUserWithEmailAndPaasword(
    String email,
    String password,
    String name,
  ) async {
    User? user;
    try {
      user = await firebaseAuthServices
          .registerWithEmailAndPassword(
            email: email,
            password: password,
          );
      var userEntity = UserEntity(
        name: name,
        email: email,
        uId: user.uid,
      );
      await addUserData(user: userEntity);
      return right(userEntity);
    } on CustomExeption catch (e) {
      if (user != null) {
        await firebaseAuthServices.deleteUser();
      }
      log(
        'exception in authrepoimpl.createUserWithEmailAndPaasword ${e.toString()}',
      );
      return left(ServerFaulier(e.toString()));
    } catch (e) {
      if (user != null) {
        await firebaseAuthServices.deleteUser();
      }
      log(
        'exception in authrepoimpl.createUserWithEmailAndPaasword ${e.toString()}',
      );
      return left(ServerFaulier(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>>
  signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      var user = await firebaseAuthServices
          .signInWithEmailAndPassword(
            email: email,
            password: password,
          );
      var userEntity = await getUserData(
        uId: user.uid,
      );
      await saveUserData(user: userEntity);
      return right(userEntity);
    } on CustomExeption catch (e) {
      return left(ServerFaulier(e.toString()));
    } catch (e) {
      log(
        'exception in authrepoimpl.createUserWithEmailAndPaasword ${e.toString()}',
      );
      return left(ServerFaulier(e.toString()));
    }
  }

  @override
  Future addUserData({
    required UserEntity user,
  }) async {
    await dataBaseServices.addData(
      bath: BackEndEndpoints.addUserData,
      documentId: user.uId,
      data: UserModel.fromEntity(user).toMap(),
    );
  }

  @override
  Future<UserEntity> getUserData({
    required String uId,
  }) async {
    var userData = await dataBaseServices.getData(
      path: BackEndEndpoints.getUserData,
      documentId: uId,
    );
    return UserModel.fromJson(userData);
  }

  @override
  Future saveUserData({
    required UserEntity user,
  }) async {
    var jsonData = jsonEncode(
      UserModel.fromEntity(user).toMap(),
    );

    await Prefs.setString(kUserData, jsonData);
  }
}
