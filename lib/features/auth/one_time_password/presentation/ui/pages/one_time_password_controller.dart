import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../../../core/utils/globals.dart';
import '../../../../reset_password/presentation/ui/pages/reset_password_screen.dart';
import '../../../data/repository/one_time_password_repository.dart';

@injectable
class OnetimePasswordController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late AutovalidateMode autovalidateMode;

  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();

  OnetimePasswordRepository _onetimePasswordRepository;

  OnetimePasswordController(this._onetimePasswordRepository);

  @override
  void onInit() {
    super.onInit();
    // logger.d(Get.arguments);
  }

  verifyOTP() async {
    // EasyLoading.show();
    // Navigator.push(
    //   Get.context!,
    //   MaterialPageRoute(
    //     builder: (ctx) => ResetPasswordPage(),
    //   ),
    // );

    logger.d("asdasdasd${Get.arguments}");
    logger.d(
        "asdasdasd${otp1Controller.text.trim() + otp2Controller.text.trim() + otp3Controller.text.trim() + otp4Controller.text.trim() + otp5Controller.text.trim() + otp6Controller.text.trim()}");

    if (Get.arguments.toString() ==
        otp1Controller.text.trim() +
            otp2Controller.text.trim() +
            otp3Controller.text.trim() +
            otp4Controller.text.trim() +
            otp5Controller.text.trim() +
            otp6Controller.text.trim()) {
      Timer(Duration(seconds: 1), () {
        Navigator.push(
          Get.context!,
          MaterialPageRoute(
            builder: (ctx) => ResetPasswordPage(),
          ),
        );
      });
    } else {
      Get.snackbar("error", "OTP doesn't match",
          snackPosition: SnackPosition.BOTTOM);
    }

    // await _onetimePasswordRepository.verifyOTP(Get.arguments).then((value) {
    //   EasyLoading.dismiss();
    //   if (value.status == true) {}
    //   Get.snackbar("", value.status!);
    // });
  }
}
