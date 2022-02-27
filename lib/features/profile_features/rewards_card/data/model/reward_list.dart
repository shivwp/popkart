import 'package:json_annotation/json_annotation.dart';

part 'reward_list.g.dart';

@JsonSerializable(explicitToJson: true)
class RewardList {
  late final int? id;
  late final String? title;
  late final String? description;
  late final String? image;
  late final String? amount;
  late final String? valid_days;
  late final int? status;
  late final String? created_at;
  late final String? updated_at;

  RewardList(
      {this.id,
      this.title,
      this.description,
      this.image,
      this.amount,
      this.valid_days,
      this.status,
      this.created_at,
      this.updated_at});

  factory RewardList.fromJson(Map<String, dynamic> json) =>
      _$RewardListFromJson(json);

  Map<String, dynamic> toJson() => _$RewardListToJson(this);
}
