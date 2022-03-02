

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

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
    // TODO: implement onInit
    super.onInit();
  }

  void verifyOTP() {

  }
}