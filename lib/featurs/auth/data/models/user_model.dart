import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruithub/featurs/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.email, required super.id, required super.name});

  factory UserModel.fromFirebaseSevices(User user) {
    return UserModel(email: user.email!, id: user.uid, name: user.displayName??'');
  }
}
