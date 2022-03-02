import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../../../core/network/network_constants.dart';
import '../model/sign_up_responses.dart';
import '../model/signup_param.dart';

@injectable
class SignUpRepository {
  var dio = Dio();

  Future<SignUpResponse> getSignup(
  {required String email, required String password, required String name}) async {
    dio.interceptors.add(PrettyDioLogger());

    try {
      final response = await dio.post(
          "http://popkart.eoxysitsolution.com/api/signup",
          data: SignUpParams(email: email, password: password, name: name)
              .toJson(),
          options: await HeaderNetWorkConstant.getOptionsWithOutToken());
      return SignUpResponse.fromJson(response.data);
    } on DioError catch (e) {
      throw e;
    }
  }
}
