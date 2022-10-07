import 'package:chat_app/outhountication/domain/entites/user_enitity.dart';

class UserDataModel extends UserData {
  const UserDataModel({
    required super.user,
    required super.token,
  });

  factory UserDataModel.fromJson(Map<String, dynamic> json) => UserDataModel(
      user: DataModel.fromJson(json['user']), token: json['token']);
}

class DataModel extends Data {
  const DataModel({
    required super.id,
    required super.name,
    required super.email,
    required super.createdAt,
    required super.updatedAt,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at'],
      );
}
