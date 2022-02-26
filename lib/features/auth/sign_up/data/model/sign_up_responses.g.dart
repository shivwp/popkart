// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpResponse _$SignUpResponseFromJson(Map<String, dynamic> json) =>
    SignUpResponse(
      status: json['status'] as bool?,
      data3: json['data3'] == null
          ? null
          : User.fromJson(json['data3'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$SignUpResponseToJson(SignUpResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data3': instance.data3,
      'message': instance.message,
    };
