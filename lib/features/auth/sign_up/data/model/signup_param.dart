

import 'package:json_annotation/json_annotation.dart';




part 'signup_param.g.dart';

@JsonSerializable()
class SignUpParams {
  final String email;
  final String password;
  final String name;

  SignUpParams({required this.email, required this.password,required this.name});

  factory SignUpParams.fromJson(Map<String, dynamic> json) =>
      _$SignUpParamsFromJson(json);


  Map<String, dynamic> toJson() => _$SignUpParamsToJson(this);


}
