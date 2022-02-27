import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:popkart/features/grocery_list/presentation/ui/pages/grocery_list_screen.dart';
import 'package:popkart/features/grocery_list_creation/data/grocery_list_params.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../../../core/network/network_constants.dart';
import '../../auth/2_step_verification/data/model/otp_params.dart';
import '../data/grocery_list_model.dart';


@injectable
class GroceryListRepository {
  var dio = Dio();

  Future<GroceryListModel> createList(
  {required GroceryListParams params}) async {
    dio.interceptors.add(PrettyDioLogger(requestHeader: true,requestBody: true));

    try {
      final response = await dio.post(
          "http://popkart.eoxysitsolution.com/api/create_list",
          data: params.toJson(),
          options: await HeaderNetWorkConstant.getOptionsWithToken());
      return GroceryListModel.fromJson(response.data);
    } on DioError catch (e) {
      throw e;
    }
  }
}
