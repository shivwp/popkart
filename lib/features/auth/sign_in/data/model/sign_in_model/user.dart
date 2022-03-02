import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';



@JsonSerializable()
class User {
 late final int? id;
 late final String? firstName;
 late final String? lastName;
 late final String? email;
 late final String? status;
 late final dynamic? userProfile;
 late final dynamic? dob;
 late final dynamic? phone;
 late final dynamic? emailVerifiedAt;
 late final dynamic? wallet;
 late final dynamic? fcmToken;
 late final int? isApproved;
 late final int? vendorWallet;
 late final int? userWallet;
 late final String? createdAt;
 late final String? updatedAt;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  User(this.id, this.firstName, this.lastName, this.email, this.status, this.userProfile, this.dob, this.phone, this.emailVerifiedAt, this.wallet, this.fcmToken, this.isApproved, this.vendorWallet, this.userWallet, this.createdAt, this.updatedAt);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
