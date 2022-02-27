import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:popkart/features/auth/reset_password/data/repository/reset_password_repository.dart';

import '../../../../sign_in/presentation/ui/pages/sign_in_screen.dart';

@injectable
class ResetPasswordController extends GetxController {
  ResetPasswordRepository _passwordRepository;

  ResetPasswordController(this._passwordRepository);

  @override
  void onInit() {
    super.onInit();
  }

  recoverPassword(String password) async {
    EasyLoading.show();
    await _passwordRepository
        .changePassword(
      email: "mp17govind96@gmail.com",
      password: password,
    )
        .then((value) {
      EasyLoading.dismiss();

      if (value.status!) {
        Navigator.pushReplacement(Get.context!,
            MaterialPageRoute(builder: (BuildContext context) {
          return SignInPage();
        }));
      }
      Get.snackbar("", value.message!);

    });
  }
}
