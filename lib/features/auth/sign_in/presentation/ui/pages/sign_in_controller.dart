import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:popkart/core/storage/app_preference.dart';
import 'package:popkart/features/auth/sign_in/data/model/sign_in_model/user.dart';

import '../../../../../../core/utils/globals.dart';
import '../../../../../home/presentation/ui/pages/bottom_navigation_screen.dart';
import '../../../data/sign_in_repository.dart';

@injectable
class SignInController extends GetxController {
  final _obj = ''.obs;

  set obj(value) => _obj.value = value;

  get obj => _obj.value;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late AutovalidateMode autovalidateMode;
  late bool passwordVisible;
  SignInRepository _repository;

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  SignInController(this._repository);

  @override
  void onInit() {
    passwordVisible = true;

    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void signIn() async {
    // call API  and if success
    EasyLoading.show();
    await _repository.getlogin("anil.shah@gmail.com", "Govind@123")
        // .getlogin(emailController.text, passwordController.text)
        .then((value) {
      EasyLoading.dismiss();
      if (value.status == true) {
        AppPrefernces.putString(
            AppPrefernces.LOGIN_PREF, jsonEncode(value.user));
        AppPrefernces.putString(AppPrefernces.TOKEN, value.token!);

        Navigator.pushReplacement(Get.context!,
            MaterialPageRoute(builder: (BuildContext context) {
          return BottomNavigationPage(
            currentIndex: 0,
          );
        }));
      } else {
        Get.snackbar("Fail", value.message!,
            snackPosition: SnackPosition.BOTTOM);
      }
    });
  }
}
