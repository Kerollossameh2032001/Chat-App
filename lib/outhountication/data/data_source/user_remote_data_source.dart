import 'package:chat_app/core/network/api_constance.dart';
import 'package:chat_app/core/network/dio_helper.dart';
import 'package:chat_app/outhountication/domain/userCase/get_user_data_use_case.dart';

import '../../domain/entites/user_enitity.dart';
import '../model/user_data_model.dart';

abstract class BaseRemoteUserDataSource {
  Future<UserData> loginUser(LoginParameter parameter);
//Future<UserData> registerUser();
}

class RemoteUserDataSource extends BaseRemoteUserDataSource {
  @override
  Future<UserData> loginUser(LoginParameter parameter) async {
    final result = await DioHelper.postData(
      endPoint: ApiConstance.loginEndPoint,
      data: {
        'email': parameter.email,
        'password': parameter.password,
      },
    );
    if (result.statusCode == 200) {
      return UserDataModel.fromJson(result.data);
    } else {
      ///ToDo: Handling Error Exception
      return UserData(
          user: Data(
              name: 'jnfjn',
              createdAt: 'iem',
              email: "mdcim",
              id: 12,
              updatedAt: 'kokok'),
          token: 'kokoko');
    }
  }
}

/*
UserData(
          user: Data(
              name: 'jnfjn',
              createdAt: 'iem',
              email: "mdcim",
              id: 12,
              updatedAt: 'kokok'),
          token: 'kokoko')
* */
