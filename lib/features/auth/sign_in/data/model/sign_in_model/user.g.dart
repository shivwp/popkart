// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      json['id'] as int?,
      json['firstName'] as String?,
      json['lastName'] as String?,
      json['email'] as String?,
      json['status'] as String?,
      json['userProfile'],
      json['dob'],
      json['phone'],
      json['emailVerifiedAt'],
      json['wallet'],
      json['fcmToken'],
      json['isApproved'] as int?,
      json['vendorWallet'] as int?,
      json['userWallet'] as int?,
      json['createdAt'] as String?,
      json['updatedAt'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'status': instance.status,
      'userProfile': instance.userProfile,
      'dob': instance.dob,
      'phone': instance.phone,
      'emailVerifiedAt': instance.emailVerifiedAt,
      'wallet': instance.wallet,
      'fcmToken': instance.fcmToken,
      'isApproved': instance.isApproved,
      'vendorWallet': instance.vendorWallet,
      'userWallet': instance.userWallet,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
