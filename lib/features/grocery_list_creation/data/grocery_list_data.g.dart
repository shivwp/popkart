// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grocery_list_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroceryListData _$GroceryListDataFromJson(Map<String, dynamic> json) =>
    GroceryListData(
      mainUserId: json['main_user_id'] as int,
      groceryName: json['grocery_name'] as String?,
      store: json['store'] as String?,
      date: json['date'] as String?,
      time: json['time'] as String?,
      updatedAt: json['updatedAt'] as String?,
      createdAt: json['createdAt'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$GroceryListDataToJson(GroceryListData instance) =>
    <String, dynamic>{
      'main_user_id': instance.mainUserId,
      'grocery_name': instance.groceryName,
      'store': instance.store,
      'date': instance.date,
      'time': instance.time,
      'updatedAt': instance.updatedAt,
      'createdAt': instance.createdAt,
      'id': instance.id,
    };
