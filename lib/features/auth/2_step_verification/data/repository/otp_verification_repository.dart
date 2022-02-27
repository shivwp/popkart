import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../../../core/network/network_constants.dart';
import '../model/otp_verify_response.dart';
import '../model/otp_params.dart';

@injectable
class OTPVerificationRepository {
  var dio = Dio();

  Future<OTPVerifyresponse> verifyOTP(
  {required String email, required String password, required String name}) async {
    dio.interceptors.add(PrettyDioLogger());

    try {
      final response = await dio.post(
          "http://popkart.eoxysitsolution.com/api/signup_otp",
          data: OTPParams(email: email, password: password, token: 'name')
              .toJson(),
          options: await HeaderNetWorkConstant.getOptionsWithOutToken());
      return OTPVerifyresponse.fromJson(response.data);
    } on DioError catch (e) {
      throw e;
    }
  }
}
