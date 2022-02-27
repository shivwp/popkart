import 'package:json_annotation/json_annotation.dart';
import 'package:popkart/features/profile_features/rewards_card/data/model/reward_list.dart';

part 'rewards_card_model.g.dart';

@JsonSerializable(explicitToJson: true)
class RewardsCardModel {
  late bool? status;
  late String? message;
  late List<RewardList>? rewardlist;

  RewardsCardModel({this.status, this.message, this.rewardlist});

  factory RewardsCardModel.fromJson(Map<String, dynamic> json) =>
      _$RewardsCardModelFromJson(json);

  Map<String, dynamic> toJson() => _$RewardsCardModelToJson(this);
}
