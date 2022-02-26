import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  int? id;
  String? title;
  String? content;

  String? createdAt;
  String? updatedAt;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Data(this.id, this.title, this.content, this.createdAt, this.updatedAt);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
