import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'photo_model.freezed.dart';
part 'photo_model.g.dart';

List<PhotoModel> PhotoModelFromJson(String str) =>
    List<PhotoModel>.from(json.decode(str).map((x) => PhotoModel.fromJson(x)));

String PhotoModelToJson(List<PhotoModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class PhotoModel with _$PhotoModel {
  const factory PhotoModel({
    @JsonKey(name: "Photos") PhotoModel? photoModel,
    @JsonKey(name: "status") bool? status,
    @JsonKey(name: "msg") String? msg,
  }) = _PhotoModel;

  factory PhotoModel.fromJson(Map<String, dynamic> json) =>
      _$PhotoModelFromJson(json);
}

@freezed
abstract class PhotoModelData with _$PhotoModelData {
  const factory PhotoModelData({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
  }) = _PhotoModelData;

  factory PhotoModelData.fromJson(Map<String, dynamic> json) =>
      _$PhotoModelDataFromJson(json);
}
