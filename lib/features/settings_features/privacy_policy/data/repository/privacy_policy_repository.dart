import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../../../core/network/network_constants.dart';
import '../model/privacy_policy_response.dart';


@injectable
class PrivacyPolicyRepository {
  var dio = Dio();

  Future<PrivacyPolicyResponse> getpolicy() async {
    dio.interceptors.add(PrettyDioLogger());

    try {
      final response = await dio.get(
          "http://popkart.eoxysitsolution.com/api/privacy_policy",
          options: await HeaderNetWorkConstant.getOptionsWithOutToken());
      return PrivacyPolicyResponse.fromJson(response.data);
    } on DioError catch (e) {
      throw e;
    }
  }
}
