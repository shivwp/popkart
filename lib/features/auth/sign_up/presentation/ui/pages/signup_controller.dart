import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:popkart/features/auth/sign_in/data/model/sign_in_model/sign_in_response.dart';

import '../../../../../../core/utils/globals.dart';
import '../../../../2_step_verification/presentation/ui/pages/2_step_verification_screen.dart';
import '../../../../sign_in/presentation/ui/pages/sign_in_screen.dart';
import '../../../data/repository/sign_up_repository.dart';

typedef signinResponse = SignInResponse;

@Injectable()
class SignUpController extends GetxController {
  SignUpRepository _signUpRepository;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late AutovalidateMode autovalidateMode;
  bool isChecked = false;
  late bool passwordVisible;
  late bool confirmPasswordVisible;
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  TextEditingController confirmPasswordEditingController =
      TextEditingController();

  var signinResponse = SignInResponse();

  SignUpController(this._signUpRepository);

  @override
  void onInit() {
    passwordVisible = true;
    confirmPasswordVisible = true;
    super.onInit();
  }

  signUp() async {
    EasyLoading.show();
    await _signUpRepository
        .getSignup(
            email: emailEditingController.text,
            password: passwordEditingController.text,
            name: "test")
        .then((value) {
      EasyLoading.dismiss();
      if (value.status == true) {
        signinResponse == value;
        update();
        Get.snackbar("", value.message!, snackPosition: SnackPosition.BOTTOM);
        Get.offAll(SignInPage());
        // Get.off(TwoStepVerificationPage(),arguments: signinResponse);
        // Navigator.push(
        //   Get.context!,
        //   MaterialPageRoute(
        //     builder: (ctx) => const TwoStepVerificationPage(),
        //   ),
        // );
      } else {
        Get.snackbar("Error", value.message!,
            snackPosition: SnackPosition.BOTTOM);
      }
    }).catchError((error) {
      Get.snackbar("Error", error, snackPosition: SnackPosition.BOTTOM);
    });
  }
}
