// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verify_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OTPVerifyresponse _$OTPVerifyresponseFromJson(Map<String, dynamic> json) =>
    OTPVerifyresponse(
      status: json['status'] as bool?,
      data3: json['data3'] == null
          ? null
          : User.fromJson(json['data3'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$OTPVerifyresponseToJson(OTPVerifyresponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data3': instance.data3,
      'message': instance.message,
    };
