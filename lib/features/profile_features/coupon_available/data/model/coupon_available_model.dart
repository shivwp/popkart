import 'package:json_annotation/json_annotation.dart';
import 'package:popkart/features/profile_features/coupon_available/data/model/coupon_list.dart';


part 'coupon_available_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CouponAvailableModel {
  late bool? status;
  late String? message;
  late List<CouponList>? couponlist;

  CouponAvailableModel({this.status, this.message, this.couponlist});

  factory CouponAvailableModel.fromJson(Map<String, dynamic> json) =>
      _$CouponAvailableModelFromJson(json);

  Map<String, dynamic> toJson() => _$CouponAvailableModelToJson(this);
}

