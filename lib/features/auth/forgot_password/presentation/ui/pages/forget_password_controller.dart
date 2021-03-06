import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:popkart/core/utils/globals.dart';

import '../../../../one_time_password/presentation/ui/pages/one_time_password_screen.dart';
import '../../../data/repository/forget_password_repository.dart';

@Injectable()
class ForgetpasswordController extends GetxController {
  final ForgetPasswordRepository forgetPasswordRepository;

  ForgetpasswordController(this.forgetPasswordRepository);

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void forgetPassword(String email) async {
    EasyLoading.show();
    await forgetPasswordRepository.forgetPassword(email: email).then((value) {
      EasyLoading.dismiss();
      if (value.status == true) {
        Get.off(() => OneTimePasswordPage(), arguments: value.token!);
      }
      Get.snackbar("", value.message!);
    }).catchError((e) {
      EasyLoading.dismiss();
      Get.snackbar("error", e);
    });
  }
}
