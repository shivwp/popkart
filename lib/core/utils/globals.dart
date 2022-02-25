import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:get/get.dart';
import '../injectable/injectable_init.dart';
import '../network/network_constants.dart';



export 'package:get/get.dart';

export 'package:styled_widget/styled_widget.dart';

final getIt = GetIt.instance;
final logger = Logger();
Future<String> initGlobalConfigs() async {
  configureDependencies();
  return '';
}
