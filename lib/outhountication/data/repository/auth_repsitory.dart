import 'package:chat_app/outhountication/domain/entites/user_enitity.dart';
import 'package:chat_app/outhountication/domain/repository/base_auth_repository.dart';
import 'package:chat_app/outhountication/domain/userCase/get_user_data_use_case.dart';

import '../data_source/user_remote_data_source.dart';

class AuthRepository extends BaseAuthRepository{
  final BaseRemoteUserDataSource baseRemoteUserDataSource;

  AuthRepository(this.baseRemoteUserDataSource);

  ///ToDo : Handling Error Exception
  @override
  Future<UserData> loginUser(LoginParameter parameter) async {
    return await baseRemoteUserDataSource.loginUser(parameter);
  }
}