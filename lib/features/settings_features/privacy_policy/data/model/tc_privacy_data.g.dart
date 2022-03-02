// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tc_privacy_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TcPrivacyData _$TcPrivacyDataFromJson(Map<String, dynamic> json) =>
    TcPrivacyData(
      id: json['id'] as int?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$TcPrivacyDataToJson(TcPrivacyData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
