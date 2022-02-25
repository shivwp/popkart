import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:popkart/core/utils/globals.dart';
import 'package:popkart/features/splash_screen/presentation/ui/pages/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initGlobalConfigs();
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
