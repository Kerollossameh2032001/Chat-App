import 'package:equatable/equatable.dart';

class UserData extends Equatable {
  final Data user;
  final String token;

  const UserData({
    required this.user,
    required this.token,
  });

  @override
  List<Object> get props => [user, token];
}

class Data extends Equatable {
  final int id;
  final String name;
  final String email;
  final String createdAt;
  final String updatedAt;

  const Data({
    required this.id,
    required this.name,
    required this.email,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  List<Object> get props => [id, name, email, createdAt, updatedAt];
}
