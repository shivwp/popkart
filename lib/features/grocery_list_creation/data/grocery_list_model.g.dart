// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grocery_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroceryListModel _$GroceryListModelFromJson(Map<String, dynamic> json) =>
    GroceryListModel(
      listcreate:
          GroceryListData.fromJson(json['listcreate'] as Map<String, dynamic>),
      status: json['status'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$GroceryListModelToJson(GroceryListModel instance) =>
    <String, dynamic>{
      'listcreate': instance.listcreate.toJson(),
      'status': instance.status,
      'message': instance.message,
    };
