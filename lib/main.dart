import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/core/utils/globals.dart';
import 'package:popkart/features/splash_screen/presentation/ui/pages/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initGlobalConfigs();
  configEasyLoading();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        builder: EasyLoading.init(),
        title: 'popKart',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen());
  }
}

void configEasyLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.light
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = PopKartAppColor.appbar
    ..backgroundColor = Colors.white
    ..indicatorColor = PopKartAppColor.appbar
    ..textColor = Color(0xff003893)
    ..maskColor = Colors.blue.withOpacity(1.0)
    ..userInteractions = true
    ..dismissOnTap = false;
}
