import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../../../core/network/network_constants.dart';
import '../model/one_time_password_response.dart';



@injectable
class OnetimePasswordRepository {
  var dio = Dio();

  Future<OneTimePasswordResponse> verifyOTP(String token) async {
    dio.interceptors.add(PrettyDioLogger());

    try {
      final response = await dio.post(
          "http://popkart.eoxysitsolution.com/api/forget_password_otp",
          data: {"token":int.tryParse(token)},
          options: await HeaderNetWorkConstant.getOptionsWithOutToken());
      return OneTimePasswordResponse.fromJson(response.data);
    } on DioError catch (e) {
      throw e;
    }
  }
}
