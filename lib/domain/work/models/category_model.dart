// To parse this JSON data, do
//
//     final categoryModel = categoryModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

AssetModel assetModelFromJson(String str) => AssetModel.fromJson(json.decode(str));

String assetModelToJson(AssetModel data) => json.encode(data.toJson());

@freezed
abstract class AssetModel with _$AssetModel {
  const factory AssetModel({
    @JsonKey(name: "items") List<AssetItem>? assetItems,
  }) = _AssetModel;

  factory AssetModel.fromJson(Map<String, dynamic> json) => _$AssetModelFromJson(json);
}

@freezed
abstract class AssetItem with _$AssetItem {
  const factory AssetItem({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "uom_id") List<dynamic>? uomId,
  }) = _Asset;

  factory AssetItem.fromJson(Map<String, dynamic> json) => _$AssetItemFromJson(json);
}
