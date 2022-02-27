import 'package:json_annotation/json_annotation.dart';

import 'grocery_list_data.dart';

part 'grocery_list_model.g.dart';

@JsonSerializable(explicitToJson: true)
class GroceryListModel {

  GroceryListModel({
    required this.listcreate,
    required this.status,
    required this.message,
  });
  @JsonKey(name: "listcreate")
  late final GroceryListData listcreate;
  late final bool status;
  late final String message;

  factory GroceryListModel.fromJson(Map<String, dynamic> json) =>
      _$GroceryListModelFromJson(json);

  Map<String, dynamic> toJson() => _$GroceryListModelToJson(this);
}
