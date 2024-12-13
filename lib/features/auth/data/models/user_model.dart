import 'package:ecommerce/features/auth/domain/entities/user.dart';

class UserModel extends User {
  const UserModel({
    required super.name,
    required super.email,
    required super.role,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json['name'] as String,
        email: json['email'] as String,
        role: json['role'] as String,
      );
}
