

import 'package:json_annotation/json_annotation.dart';




part 'otp_params.g.dart';

@JsonSerializable()
class OTPParams {
  final String email;
  final String password;
  final String token;

  OTPParams({required this.email, required this.password,required this.token});

  factory OTPParams.fromJson(Map<String, dynamic> json) =>
      _$OTPParamsFromJson(json);


  Map<String, dynamic> toJson() => _$OTPParamsToJson(this);


}
