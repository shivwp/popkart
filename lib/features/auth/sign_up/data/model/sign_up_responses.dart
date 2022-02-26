import 'package:json_annotation/json_annotation.dart';

import '../../../sign_in/data/model/sign_in_model/user.dart';

part 'sign_up_responses.g.dart';


@JsonSerializable()
class SignUpResponse {

  SignUpResponse(
  {this.status,
     this.data3,
     this.message,}
  );
  late final bool? status;
  late final User? data3;
  late final String? message;

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpResponseToJson(this);
}
