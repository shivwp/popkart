import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:popkart/features/settings_features/terms_conditions/data/model/terms_conditions_model.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../../../core/network/network_constants.dart';

@injectable
class TermsConditionsRepository {
  var dio = Dio();

  Future<TermsConditionsModel> getTermsConditions() async {
    dio.interceptors.add(PrettyDioLogger());

    try {
      final response = await dio.get(
          "http://popkart.eoxysitsolution.com/api/terms_conditions",
          options: await HeaderNetWorkConstant.getOptionsWithOutToken());
      return TermsConditionsModel.fromJson(response.data);
    } on DioError catch (e) {
      throw e;
    }
  }
}
