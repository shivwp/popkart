// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rewards_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RewardsCardModel _$RewardsCardModelFromJson(Map<String, dynamic> json) =>
    RewardsCardModel(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      rewardlist: (json['rewardlist'] as List<dynamic>?)
          ?.map((e) => RewardList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RewardsCardModelToJson(RewardsCardModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'rewardlist': instance.rewardlist?.map((e) => e.toJson()).toList(),
    };
