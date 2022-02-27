import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:injectable/injectable.dart';
import 'package:popkart/core/utils/globals.dart';
import 'package:popkart/features/profile_features/coupon_available/data/model/coupon_available_model.dart';
import 'package:popkart/features/profile_features/coupon_available/data/repository/coupon_available_repository.dart';

@injectable
class CouponAvailableController extends GetxController {
  CouponAvailableRepository _couponAvailableRepository;

  CouponAvailableController(this._couponAvailableRepository);

  var couponResponse = CouponAvailableModel();

  @override
  void onInit() {
    getCouponAvailableData();
    super.onInit();
  }

  getCouponAvailableData() {
    EasyLoading.show();
    _couponAvailableRepository.getCouponAvailableData().then((value) {
      EasyLoading.dismiss();
      if (value.status == true) {
        couponResponse = value;
        update();
        debugPrint(couponResponse.message);
      }
    });
  }
}
