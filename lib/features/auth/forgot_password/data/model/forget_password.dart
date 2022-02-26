import 'package:json_annotation/json_annotation.dart';

part 'forget_password.g.dart';

@JsonSerializable()
class ForgetPassword {
  ForgetPassword({
    this.status,
    this.token,
    this.message,
  });

  late bool? status;
  late int? token;
  late String? message;

  factory ForgetPassword.fromJson(Map<String, dynamic> json) =>
      _$ForgetPasswordFromJson(json);

  Map<String, dynamic> toJson() => _$ForgetPasswordToJson(this);
}
