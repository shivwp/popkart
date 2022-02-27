import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:popkart/features/auth/reset_password/data/repository/reset_password_repository.dart';

import '../../../../../../core/storage/app_preference.dart';
import '../../../../sign_in/data/model/sign_in_model/user.dart';
import '../../../../sign_in/presentation/ui/pages/sign_in_screen.dart';

@injectable
class ResetPasswordController extends GetxController {
  ResetPasswordRepository _passwordRepository;

  ResetPasswordController(this._passwordRepository);
var user = User();
  @override
  void onInit() {
    user = User.fromJson(
        jsonDecode(AppPrefernces.getString(AppPrefernces.LOGIN_PREF)));
    super.onInit();
  }

  recoverPassword(String password) async {
    EasyLoading.show();
    await _passwordRepository
        .changePassword(
      email: user.email!,
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
