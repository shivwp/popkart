// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CouponList _$CouponListFromJson(Map<String, dynamic> json) => CouponList(
      id: json['id'] as int?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      discount_type: json['discount_type'] as String?,
      coupon_amount: json['coupon_amount'] as String?,
      allow_free_shipping: json['allow_free_shipping'] as String?,
      start_date: json['start_date'] as String?,
      expiry_date: json['expiry_date'] as String?,
      minimum_spend: json['minimum_spend'] as String?,
      maximum_spend: json['maximum_spend'] as String?,
      limit_per_coupon: json['limit_per_coupon'] as String?,
      limit_per_user: json['limit_per_user'] as String?,
      status: json['status'] as int?,
      vendor_id: json['vendor_id'] as String?,
      category_id: json['category_id'] as String?,
      product_id: json['product_id'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      featured_image: json['featured_image'] as String?,
    );

Map<String, dynamic> _$CouponListToJson(CouponList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'description': instance.description,
      'discount_type': instance.discount_type,
      'coupon_amount': instance.coupon_amount,
      'allow_free_shipping': instance.allow_free_shipping,
      'start_date': instance.start_date,
      'expiry_date': instance.expiry_date,
      'minimum_spend': instance.minimum_spend,
      'maximum_spend': instance.maximum_spend,
      'limit_per_coupon': instance.limit_per_coupon,
      'limit_per_user': instance.limit_per_user,
      'status': instance.status,
      'vendor_id': instance.vendor_id,
      'category_id': instance.category_id,
      'product_id': instance.product_id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'featured_image': instance.featured_image,
    };
