import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:popkart/core/network/api_constants.dart';
import 'package:popkart/features/profile_features/rewards_card/data/model/rewards_card_model.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../../../core/network/network_constants.dart';

@injectable
class RewardsCardRepository {
  var dio = Dio();

  Future<RewardsCardModel> getRewardsCardData() async {
    dio.interceptors.add(PrettyDioLogger());

    try {
      final response = await dio.get(ApiConstants.BASE_URL + "get_reward_list",
          options: await HeaderNetWorkConstant.getOptionsWithToken());
      return RewardsCardModel.fromJson(response.data);
    } on DioError catch (e) {
      throw e;
    }
  }
}
