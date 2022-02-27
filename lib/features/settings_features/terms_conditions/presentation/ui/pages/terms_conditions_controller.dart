import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:injectable/injectable.dart';
import 'package:popkart/core/utils/globals.dart';
import 'package:popkart/features/settings_features/terms_conditions/data/model/terms_conditions_model.dart';
import 'package:popkart/features/settings_features/terms_conditions/data/repository/terms_conditions_repository.dart';

@injectable
class TermsConditionsController extends GetxController {
  var termsData = TermsConditionsModel();
  TermsConditionsRepository _termsConditionsRepository;

  TermsConditionsController(this._termsConditionsRepository);

  @override
  void onInit() {
    super.onInit();
    getTermsConditionsData();
  }

  void getTermsConditionsData() async {
    // call API  and if success
    EasyLoading.show();
    await _termsConditionsRepository.getTermsConditions().then((value) {
      EasyLoading.dismiss();
      // logger.d(value.message);

      if (value.status!) {
        termsData == value;
        update();
        // debugPrint(termsData.data!.title!);
        //debugPrint(termsData.message);
      } else {
        Get.snackbar("fail", value.message!);
      }
    });
  }
}
