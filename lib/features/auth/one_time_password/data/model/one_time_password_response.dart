import 'package:json_annotation/json_annotation.dart';

part 'one_time_password_response.g.dart';

@JsonSerializable()
class OneTimePasswordResponse {
  String? status;

  OneTimePasswordResponse({this.status});

  factory OneTimePasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$OneTimePasswordResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OneTimePasswordResponseToJson(this);
}
