// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RewardList _$RewardListFromJson(Map<String, dynamic> json) => RewardList(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      amount: json['amount'] as String?,
      valid_days: json['valid_days'] as String?,
      status: json['status'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$RewardListToJson(RewardList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'amount': instance.amount,
      'valid_days': instance.valid_days,
      'status': instance.status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
