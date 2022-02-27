import 'package:json_annotation/json_annotation.dart';

part 'coupon_list.g.dart';

@JsonSerializable(explicitToJson: true)
class CouponList {
  late final int? id;
  late final String? code;
  late final String? description;
  late final String? discount_type;
  late final String? coupon_amount;
  late final String? allow_free_shipping;
  late final String? start_date;
  late final String? expiry_date;
  late final String? minimum_spend;
  late final String? maximum_spend;
  late final String? limit_per_coupon;
  late final String? limit_per_user;
  late final int? status;
  late final String? vendor_id;
  late final String? category_id;
  late final String? product_id;
  late final String? created_at;
  late final String? updated_at;
  late final String? featured_image;

  CouponList(
      {this.id,
      this.code,
      this.description,
      this.discount_type,
      this.coupon_amount,
      this.allow_free_shipping,
      this.start_date,
      this.expiry_date,
      this.minimum_spend,
      this.maximum_spend,
      this.limit_per_coupon,
      this.limit_per_user,
      this.status,
      this.vendor_id,
      this.category_id,
      this.product_id,
      this.created_at,
      this.updated_at,
      this.featured_image});

  factory CouponList.fromJson(Map<String, dynamic> json) =>
      _$CouponListFromJson(json);

  Map<String, dynamic> toJson() => _$CouponListToJson(this);
}
/*
{
"id": 2,
"code": "COUP8253",
"description": "asd",
"discount_type": null,
"coupon_amount": null,
"allow_free_shipping": null,
"start_date": null,
"expiry_date": null,
"minimum_spend": null,
"maximum_spend": null,
"limit_per_coupon": null,
"limit_per_user": null,
"status": 0,
"vendor_id": "null",
"category_id": "null",
"product_id": "null",
"created_at": "2022-02-14T06:54:21.000000Z",
"updated_at": "2022-02-24T10:46:21.000000Z",
"featured_image": "1645699581.png"
},
*/
