import 'package:boutigi_app/features/auth/domain/entites/user_entity.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.name,
    required super.email,
    required super.uId,
  });

  factory UserModel.fromSupabaseUser(User user) {
    return UserModel(
      name: user.userMetadata?['name'] ?? '',
      email: user.email ?? '',
      uId: user.id,
    );
  }

  factory UserModel.fromJson(
    Map<String, dynamic> json,
  ) {
    return UserModel(
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      uId:
          json['id'] ??
          json['uId'] ??
          '', // دعم كلا من id و uId
    );
  }

  factory UserModel.fromEntity(UserEntity user) {
    return UserModel(
      name: user.name,
      email: user.email,
      uId: user.uId,
    );
  }

  toMap() {
    return {
      'id':
          uId, // استخدام id بدلاً من uId لتتطابق مع الجدول
      'name': name,
      'email': email,
    };
  }
}
