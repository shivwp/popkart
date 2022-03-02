import 'package:json_annotation/json_annotation.dart';

import '../../../sign_in/data/model/sign_in_model/user.dart';

part 'reset_password_response.g.dart';

@JsonSerializable()

class ResetPasswordResponse {
  ResetPasswordResponse(
      {this.status,
        this.user,
        this.message,}
      );
  late final bool? status;
  late final User? user;
  late final String? message;

  factory ResetPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ResetPasswordResponseToJson(this);
}
