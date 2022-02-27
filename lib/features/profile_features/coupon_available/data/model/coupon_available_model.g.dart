// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_available_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CouponAvailableModel _$CouponAvailableModelFromJson(
        Map<String, dynamic> json) =>
    CouponAvailableModel(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      couponlist: (json['couponlist'] as List<dynamic>?)
          ?.map((e) => CouponList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CouponAvailableModelToJson(
        CouponAvailableModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'couponlist': instance.couponlist?.map((e) => e.toJson()).toList(),
    };
