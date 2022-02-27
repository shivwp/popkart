import 'package:json_annotation/json_annotation.dart';
import 'package:popkart/features/settings_features/privacy_policy/data/model/tc_privacy_data.dart';

part 'privacy_policy_response.g.dart';

@JsonSerializable(explicitToJson: true)
class PrivacyPolicyResponse {


  PrivacyPolicyResponse({
     this.status,
     this.message,
     this.data,
  });
  late  bool? status;
  late  String? message;
  late  TcPrivacyData? data;

  factory PrivacyPolicyResponse.fromJson(Map<String, dynamic> json) =>
      _$PrivacyPolicyResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PrivacyPolicyResponseToJson(this);
}
