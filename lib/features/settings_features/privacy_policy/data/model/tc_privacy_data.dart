import 'package:json_annotation/json_annotation.dart';

part 'tc_privacy_data.g.dart';

@JsonSerializable(explicitToJson: true)
class TcPrivacyData {

  TcPrivacyData({
     this.id,
     this.title,
     this.content,
     this.createdAt,
     this.updatedAt,
  });
  late final int? id;
  late final String? title;
  late final String? content;
  late final String? createdAt;
  late final String? updatedAt;
  factory TcPrivacyData.fromJson(Map<String, dynamic> json) =>
      _$TcPrivacyDataFromJson(json);

  Map<String, dynamic> toJson() => _$TcPrivacyDataToJson(this);
}
