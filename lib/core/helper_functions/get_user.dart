import 'dart:convert';

import 'package:boutigi_app/constants.dart';
import 'package:boutigi_app/core/services/shared_pfer_singilton.dart';
import 'package:boutigi_app/features/auth/data/models/user_model.dart';
import 'package:boutigi_app/features/auth/domain/entites/user_entity.dart';

UserEntity getUser() {
  var jsonString = Prefs.getString(kUserData);
  var userEntity = UserModel.fromJson(
    jsonDecode(jsonString),
  );
  return userEntity;
}
