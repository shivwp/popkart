import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

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
    await _repository
        .getlogin("mp17govind96@gmail.com", "Govind@12345")
        .then((value) {
      EasyLoading.dismiss();
      if (value.status == true) {
        Navigator.pushReplacement(Get.context!,
            MaterialPageRoute(builder: (BuildContext context) {
          return BottomNavigationPage();
        }));
      } else {
        Get.snackbar("Fail", value.message!);
      }
    });
  }
}
