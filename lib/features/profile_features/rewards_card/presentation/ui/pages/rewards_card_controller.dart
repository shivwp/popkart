import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:injectable/injectable.dart';
import 'package:popkart/core/utils/globals.dart';
import 'package:popkart/features/profile_features/rewards_card/data/model/rewards_card_model.dart';
import 'package:popkart/features/profile_features/rewards_card/data/repository/rewards_card_repository.dart';

@injectable
class RewardsCardController extends GetxController {
  RewardsCardRepository _rewardsCardRepository;

  RewardsCardController(this._rewardsCardRepository);

  var rewardsCardResponse = RewardsCardModel();

  @override
  void onInit() {
    super.onInit();
    getRewardsCardData();
  }

  getRewardsCardData() {
    EasyLoading.show();
    _rewardsCardRepository.getRewardsCardData().then((value) {
      EasyLoading.dismiss();
      if (value.status == true) {
        rewardsCardResponse = value;
        update();
        debugPrint(rewardsCardResponse.message);
      }
    });
  }
}
