

import 'package:dio/dio.dart';

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
}