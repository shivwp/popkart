import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:popkart/features/settings_features/privacy_policy/data/model/privacy_policy_response.dart';
import 'package:popkart/features/settings_features/privacy_policy/data/repository/privacy_policy_repository.dart';

@Injectable()
class PrivacyPolicyController extends GetxController {
  PrivacyPolicyRepository _policyRepository;

  PrivacyPolicyController(this._policyRepository);

  var policyresponse = PrivacyPolicyResponse();

  @override
  void onInit() {
    super.onInit();
    getPolicy();
  }

  getPolicy() {
    EasyLoading.show();
    _policyRepository.getpolicy().then((value) {
      EasyLoading.dismiss();
      if (value.status == true) {
        policyresponse = value;
        update();
      }
    });
  }
}
