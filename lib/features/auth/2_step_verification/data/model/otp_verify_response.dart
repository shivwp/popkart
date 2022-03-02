import 'package:json_annotation/json_annotation.dart';

import '../../../sign_in/data/model/sign_in_model/user.dart';

part 'otp_verify_response.g.dart';


@JsonSerializable()
class OTPVerifyresponse {

  OTPVerifyresponse(
  {this.status,
     this.data3,
     this.message,}
  );
  late final bool? status;
  late final User? data3;
  late final String? message;

  factory OTPVerifyresponse.fromJson(Map<String, dynamic> json) =>
      _$OTPVerifyresponseFromJson(json);

  Map<String, dynamic> toJson() => _$OTPVerifyresponseToJson(this);
}
