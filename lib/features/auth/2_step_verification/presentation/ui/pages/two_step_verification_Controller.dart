import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../../create_profile/presentation/ui/pages/create_profile_screen.dart';

@Injectable()
class TwoStepVerificationController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late AutovalidateMode autovalidateMode;

  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  void verifyOTP() {
    // logger.d("asdasdasd${Get.arguments}");
    // logger.d("asdasdasd${otp1Controller.text.trim() +
    //     otp2Controller.text.trim() +
    //     otp3Controller.text.trim() +
    //     otp4Controller.text.trim() +
    //     otp5Controller.text.trim() +
    //     otp6Controller.text.trim()}");

    if (Get.arguments.toString() ==
        otp1Controller.text.trim() +
            otp2Controller.text.trim() +
            otp3Controller.text.trim() +
            otp4Controller.text.trim() +
            otp5Controller.text.trim() +
            otp6Controller.text.trim()) {
      Navigator.push(
        Get.context!,
        MaterialPageRoute(
          builder: (ctx) => CreateProfilePage(),
        ),
      );
    } else {
      Get.snackbar("error", "OTP doesn't match",
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
