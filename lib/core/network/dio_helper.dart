import 'package:chat_app/core/network/api_constance.dart';
import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(BaseOptions(
      receiveDataWhenStatusError: true,
      baseUrl: ApiConstance.baseUrl,
    ));
  }

  static Future<Response> getData(
      {required String endPoint, String? token}) async {
    dio.options.headers = {
      'Accept': 'application/json',
      'Authorization': token,
    };
    return await dio.get(endPoint);
  }

  static Future<Response> postData(
      {required String endPoint, required Map<String, dynamic> data}) async {
    dio.options.headers = {
      'Accept': 'application/json',
    };
    return await dio.post(endPoint, data: data);
  }
}
