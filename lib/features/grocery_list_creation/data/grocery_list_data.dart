import 'package:json_annotation/json_annotation.dart';

part 'grocery_list_data.g.dart';

@JsonSerializable(explicitToJson: true)
class GroceryListData {

  GroceryListData({
    required this.mainUserId,
    required this.groceryName,
    required this.store,
    required this.date,
    required this.time,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  @JsonKey(name: "main_user_id")
  late final int mainUserId;
  @JsonKey(name: "grocery_name")

  late final String? groceryName;
  late final String? store;
  late final String? date;
  late final String? time;
  late final String? updatedAt;
  late final String? createdAt;
  late final int? id;

  factory GroceryListData.fromJson(Map<String, dynamic> json) =>
      _$GroceryListDataFromJson(json);

  Map<String, dynamic> toJson() => _$GroceryListDataToJson(this);
}
