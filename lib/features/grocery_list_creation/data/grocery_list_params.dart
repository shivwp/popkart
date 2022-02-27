import 'package:json_annotation/json_annotation.dart';

part 'grocery_list_params.g.dart';

@JsonSerializable(explicitToJson: true)
class GroceryListParams {
  @JsonKey(name: "list_name")
  String? listName;
  @JsonKey(name: "store_name")
  String? storeName;
  String? date;
  String? time;
  @JsonKey(name: "user_email")
  List<String>? userEmail;

  factory GroceryListParams.fromJson(Map<String, dynamic> json) =>
      _$GroceryListParamsFromJson(json);

  GroceryListParams(
      {this.listName, this.storeName, this.date, this.time, this.userEmail});

  Map<String, dynamic> toJson() => _$GroceryListParamsToJson(this);
}
