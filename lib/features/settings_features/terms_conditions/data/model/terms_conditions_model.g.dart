// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terms_conditions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TermsConditionsModel _$TermsConditionsModelFromJson(
        Map<String, dynamic> json) =>
    TermsConditionsModel(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TermsConditionsModelToJson(
        TermsConditionsModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
