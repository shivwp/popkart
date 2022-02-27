// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grocery_list_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroceryListParams _$GroceryListParamsFromJson(Map<String, dynamic> json) =>
    GroceryListParams(
      listName: json['list_name'] as String?,
      storeName: json['store_name'] as String?,
      date: json['date'] as String?,
      time: json['time'] as String?,
      userEmail: (json['user_email'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$GroceryListParamsToJson(GroceryListParams instance) =>
    <String, dynamic>{
      'list_name': instance.listName,
      'store_name': instance.storeName,
      'date': instance.date,
      'time': instance.time,
      'user_email': instance.userEmail,
    };
