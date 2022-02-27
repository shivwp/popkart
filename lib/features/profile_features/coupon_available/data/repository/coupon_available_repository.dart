import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:popkart/core/network/api_constants.dart';
import 'package:popkart/features/profile_features/coupon_available/data/model/coupon_available_model.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../../../core/network/network_constants.dart';

@injectable
class CouponAvailableRepository {
  var dio = Dio();

  Future<CouponAvailableModel> getCouponAvailableData() async {
    dio.interceptors.add(PrettyDioLogger());

    try {
      final response = await dio.get(ApiConstants.BASE_URL + "get_coupon_list",
          options: await HeaderNetWorkConstant.getOptionsWithToken());
      return CouponAvailableModel.fromJson(response.data);
    } on DioError catch (e) {
      throw e;
    }
  }
}
