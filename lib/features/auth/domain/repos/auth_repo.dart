import 'package:boutigi_app/core/errors/fauliers.dart';
import 'package:boutigi_app/features/auth/domain/entites/user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPaasword(
    String email,
    String password,
    String name,
  );

  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future addUserData({required UserEntity user});
  Future<UserEntity> getUserData({required String uId});
}
