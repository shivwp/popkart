// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OTPParams _$OTPParamsFromJson(Map<String, dynamic> json) => OTPParams(
      email: json['email'] as String,
      password: json['password'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$OTPParamsToJson(OTPParams instance) => <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'token': instance.token,
    };
