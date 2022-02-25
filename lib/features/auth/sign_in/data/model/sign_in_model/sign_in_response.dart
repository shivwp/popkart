import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'sign_in_response.g.dart';

@JsonSerializable()
class SignInResponse {
  late final bool status;
  late final String? message;
  late final String? token;
  late final User? user;

  SignInResponse(this.status, this.message, this.token, this.user);

  factory SignInResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SignInResponseToJson(this);
}
