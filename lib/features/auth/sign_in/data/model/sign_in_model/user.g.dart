// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      status: json['status'] as String?,
      userProfile: json['userProfile'],
      dob: json['dob'],
      phone: json['phone'],
      emailVerifiedAt: json['emailVerifiedAt'],
      wallet: json['wallet'],
      fcmToken: json['fcmToken'],
      isApproved: json['isApproved'] as int?,
      vendorWallet: json['vendorWallet'] as int?,
      userWallet: json['userWallet'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
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
