import 'package:chat_app/core/base_useCase/base_user_case.dart';
import 'package:chat_app/outhountication/domain/entites/user_enitity.dart';
import 'package:equatable/equatable.dart';

import '../repository/base_auth_repository.dart';

class LoginUserUseCase extends BaseUseCase<UserData,LoginParameter> {
  final BaseAuthRepository baseUserDataRepository;

  LoginUserUseCase(this.baseUserDataRepository);

  @override
  Future<UserData> call(LoginParameter parameter) async {
    return await baseUserDataRepository.loginUser(parameter);
  }
}

class LoginParameter extends Equatable {
  final String email;
  final String password;

  const LoginParameter({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];
}