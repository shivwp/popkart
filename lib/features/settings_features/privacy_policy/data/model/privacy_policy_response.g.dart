// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'privacy_policy_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrivacyPolicyResponse _$PrivacyPolicyResponseFromJson(
        Map<String, dynamic> json) =>
    PrivacyPolicyResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : TcPrivacyData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PrivacyPolicyResponseToJson(
        PrivacyPolicyResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };
