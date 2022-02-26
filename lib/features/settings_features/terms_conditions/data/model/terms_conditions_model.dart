import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'terms_conditions_model.g.dart';

@JsonSerializable()
class TermsConditionsModel {
  bool status;
  String? message;
  Data? data;

  TermsConditionsModel(this.status, this.message, this.data);

  factory TermsConditionsModel.fromJson(Map<String, dynamic> json) =>
      _$TermsConditionsModelFromJson(json);

  Map<String, dynamic> toJson() => _$TermsConditionsModelToJson(this);
}
