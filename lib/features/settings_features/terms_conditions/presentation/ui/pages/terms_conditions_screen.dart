import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popkart/core/constants/app_colors.dart';
import 'package:popkart/features/settings/presentation/ui/pages/settings_screen.dart';
import 'package:popkart/features/settings_features/terms_conditions/presentation/ui/pages/terms_conditions_controller.dart';

import '../../../../../../core/utils/globals.dart';

class TermsConditionsPage extends StatefulWidget {
  const TermsConditionsPage({Key? key}) : super(key: key);

  @override
  _TermsConditionsPageState createState() => _TermsConditionsPageState();
}

class _TermsConditionsPageState extends State<TermsConditionsPage> {
  @override
  Widget build(BuildContext context) {
    Get.put(getIt<TermsConditionsController>());
    return GetBuilder<TermsConditionsController>(builder: (controller) {
      return Scaffold(
        backgroundColor: PopKartAppColor.white,
        appBar: AppBar(
          backgroundColor: PopKartAppColor.appbar,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 25.0,
            ),
          ),
          centerTitle: false,
          titleSpacing: 0.0,
          title: Transform(
            // You can forcefully translate values left side using Transform
            transform: Matrix4.translationValues(-12.0, 0.0, 0.0),
            child: Image.asset(
              'assets/images/pop_kart_logo.png',
              height: 45,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => const SettingsPage(),
                    ),
                  );
                },
                icon: Icon(Icons.settings))
          ],
        ),
        body: ListView(
          children: [
            SizedBox(height: 25.0),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Text(
                "Hello",
                // controller.termsData.data!.title!,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xff003893),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
               // "Hello",
                controller.termsData.data!.title!,
                strutStyle: StrutStyle(
                  fontFamily: 'Roboto',
                  fontSize: 15,
                  height: 0.7,
                  leading: 1.0,
                ),
                style: TextStyle(fontSize: 15.0, color: Colors.black54),
              ),
            ),
          ],
        ),
      );
    });
  }
}
