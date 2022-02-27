import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:popkart/features/auth/forgot_password/data/model/forget_password.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../../../core/network/network_constants.dart';


@injectable
class ForgetPasswordRepository {
  var dio = Dio();

  Future<ForgetPassword> forgetPassword({required String email}) async {
    dio.interceptors.add(PrettyDioLogger());

    try {
      final response = await dio.post(
          "http://popkart.eoxysitsolution.com/api/forget_password_otp",
          data: {"email": email},
          options: await HeaderNetWorkConstant.getOptionsWithOutToken());
      return ForgetPassword.fromJson(response.data);
    } on DioError catch (e) {
      throw e;
    }
  }
}
