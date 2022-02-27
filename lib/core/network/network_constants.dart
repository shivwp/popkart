

import 'package:dio/dio.dart';

import '../storage/app_preference.dart';
import 'api_constants.dart';

class HeaderNetWorkConstant {
  static final BaseOptions baseOptions = BaseOptions(
      baseUrl: ApiConstants.BASE_URL,
      connectTimeout: 20000,
      receiveTimeout: 20000,
      headers: {
        'Content-Type': 'application/json',
        'charset': 'utf-8',
        'accept': 'application/json'
      });





  //GETwithouttoken
  static Future<Options> getOptionsWithOutToken({
    String accept = 'application/json',
    int sendTimeout = 60000,
    int receiveTimeout = 60000,
  }) async {
    return Options(
        sendTimeout: sendTimeout,
        receiveTimeout: receiveTimeout,
        headers: {
          'accept': accept,
          'Content-Type': 'application/x-www-form-urlencoded',
        });
  }


  static Future<Options> getOptionsWithToken({
    String accept = 'application/json',
    int sendTimeout = 60000,
    int receiveTimeout = 60000,
  }) async {
    final token = await AppPrefernces.getString(AppPrefernces.TOKEN);
    return Options(
        sendTimeout: sendTimeout,
        receiveTimeout: receiveTimeout,
        headers: {
          'accept': accept,
          'Content-Type': 'application/json',
          'Authorization': "Bearer ${token}",
        });
  }
}