// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgetPassword _$ForgetPasswordFromJson(Map<String, dynamic> json) =>
    ForgetPassword(
      status: json['status'] as bool?,
      token: json['token'] as int?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ForgetPasswordToJson(ForgetPassword instance) =>
    <String, dynamic>{
      'status': instance.status,
      'token': instance.token,
      'message': instance.message,
    };
