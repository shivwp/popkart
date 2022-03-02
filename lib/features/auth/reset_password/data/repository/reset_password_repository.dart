import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../../../core/network/network_constants.dart';
import '../model/reset_password_response.dart';


@injectable
class ResetPasswordRepository {
  var dio = Dio();

  Future<ResetPasswordResponse> changePassword(
  {required String email, required String password,}) async {
    dio.interceptors.add(PrettyDioLogger());

    try {
      final response = await dio.post(
          "http://popkart.eoxysitsolution.com/api/reset_password",
          data: {
            "email":email,
            "password":password
          },
          options: await HeaderNetWorkConstant.getOptionsWithOutToken());
      return ResetPasswordResponse.fromJson(response.data);
    } on DioError catch (e) {
      throw e;
    }
  }
}
