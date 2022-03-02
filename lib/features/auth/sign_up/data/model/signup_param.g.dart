// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpParams _$SignUpParamsFromJson(Map<String, dynamic> json) => SignUpParams(
      email: json['email'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$SignUpParamsToJson(SignUpParams instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
    };
