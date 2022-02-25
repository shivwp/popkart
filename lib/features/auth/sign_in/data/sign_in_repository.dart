import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../../core/network/network_constants.dart';
import 'model/login_params.dart';
import 'model/sign_in_model/sign_in_response.dart';

@injectable
class SignInRepository {
  var dio = Dio();

  Future<SignInResponse> getlogin(String email, String password) async {
    dio.interceptors.add(PrettyDioLogger());

    try {
      final response = await dio.post(
          "http://popkart.eoxysitsolution.com/api/login",
          data: LoginParams(email: email, password: password).toJson(),
          options: await HeaderNetWorkConstant.getOptionsWithOutToken());
      return SignInResponse.fromJson(response.data);
    } on DioError catch (e) {
      throw e;
    }
  }
}
