import 'package:chat_app/outhountication/domain/userCase/get_user_data_use_case.dart';

import '../entites/user_enitity.dart';

abstract class BaseAuthRepository {
  Future<UserData> loginUser(LoginParameter parameter);
  //Future<UserData> registerUserData();
}
